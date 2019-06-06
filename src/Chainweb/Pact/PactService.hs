{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}

-- |
-- Module: Chainweb.Pact.PactService
-- Copyright: Copyright © 2018 Kadena LLC.
-- License: See LICENSE file
-- Maintainers: Mark Nichols <mark@kadena.io>, Emily Pillmore <emily@kadena.io>
-- Stability: experimental
--
-- Pact service for Chainweb
module Chainweb.Pact.PactService
    ( pactDbConfig
    , execNewBlock
    , execNewGenesisBlock
    , execTransactions
    , execValidateBlock
    , initPactService, initPactService'
    , mkPureState
    , serviceRequests
    , createCoinContract
    , toHashedLogTxOutput
    , initialPayloadState
    , transactionsFromPayload
    -- , withCheckpointer
    , restoreCheckpointer
    , finalizeCheckpointer
    , toPayloadWithOutputs
    , toTransactionBytes
    , runCoinbase
    , discardCheckpointer
    ) where

import Control.Concurrent
import Control.Concurrent.STM
import Control.Exception hiding (try)
import Control.Lens
import Control.Monad
import Control.Monad.Catch
import Control.Monad.Reader
import Control.Monad.State.Strict

import qualified Data.Aeson as A
import Data.Bifoldable (bitraverse_)
import Data.Bifunctor (first)
import Data.ByteString (ByteString)
import Data.Default (def)
import Data.Either
import Data.Foldable (toList)
import Data.Maybe (isNothing)
import qualified Data.Sequence as Seq
import Data.String.Conv (toS)
import qualified Data.Text as T
import Data.Vector (Vector)
import qualified Data.Vector as V

import System.LogLevel

-- external pact modules

import qualified Pact.Gas as P
import qualified Pact.Interpreter as P
import qualified Pact.Types.Command as P
import qualified Pact.Types.Logger as P
import qualified Pact.Types.Runtime as P

-- internal modules

import Chainweb.BlockHash
import Chainweb.BlockHeader (BlockHeader(..), BlockHeight(..), isGenesisBlockHeader)
import Chainweb.ChainId (ChainId)
import Chainweb.CutDB (CutDb)
import Chainweb.Logger
import Chainweb.Orphans ()
import Chainweb.Pact.Backend.InMemoryCheckpointer (initInMemoryCheckpointEnv)
import Chainweb.Pact.Backend.MemoryDb
import Chainweb.Pact.Service.PactQueue (getNextRequest)
import Chainweb.Pact.Service.Types
import Chainweb.Pact.SPV
import Chainweb.Pact.TransactionExec
import Chainweb.Pact.Types
-- import Chainweb.Pact.Utils
import Chainweb.Payload
import Chainweb.Transaction
import Chainweb.Utils
import Chainweb.Version (ChainwebVersion(..))

-- genesis block (temporary)

import Chainweb.BlockHeader.Genesis (genesisBlockHeader)
import Chainweb.BlockHeader.Genesis.Testnet00Payload (payloadBlock)


pactDbConfig :: ChainwebVersion -> PactDbConfig
pactDbConfig Test{} = PactDbConfig Nothing "log-unused" [] (Just 0) (Just 0)
pactDbConfig TimedConsensus{} = PactDbConfig Nothing "log-unused" [] (Just 0) (Just 0)
pactDbConfig PowConsensus{} = PactDbConfig Nothing "log-unused" [] (Just 0) (Just 0)
pactDbConfig TimedCPM{} = PactDbConfig Nothing "log-unused" [] (Just 0) (Just 0)
pactDbConfig Testnet00 = PactDbConfig Nothing "log-unused" [] (Just 0) (Just 0)
pactDbConfig Testnet01 = PactDbConfig Nothing "log-unused" [] (Just 0) (Just 0)

pactLogLevel :: String -> LogLevel
pactLogLevel "INFO" = Info
pactLogLevel "ERROR" = Error
pactLogLevel "DEBUG" = Debug
pactLogLevel "WARN" = Warn
pactLogLevel _ = Info

pactLoggers :: Logger logger => logger -> P.Loggers
pactLoggers logger = P.Loggers $ P.mkLogger (error "ignored") fun def
  where
    fun :: P.LoggerLogFun
    fun _ (P.LogName n) cat msg = do
        let namedLogger = addLabel ("logger", T.pack n) logger
        logFunctionText namedLogger (pactLogLevel cat) $ T.pack msg


initPactService
    :: Logger logger
    => ChainwebVersion
    -> ChainId
    -> logger
    -> TQueue RequestMsg
    -> MemPoolAccess
    -> MVar (CutDb cas)
    -> IO ()
initPactService ver cid chainwebLogger reqQ memPoolAccess cdbv =
    initPactService' cid chainwebLogger (pactSPV cdbv) $
      initialPayloadState ver cid >> serviceRequests memPoolAccess reqQ

initPactService'
    :: Logger logger
    => ChainId
    -> logger
    -> (P.Logger -> P.SPVSupport)
    -> PactServiceM a
    -> IO a
initPactService' cid chainwebLogger spv act = do
    let loggers = pactLoggers chainwebLogger
    let logger = P.newLogger loggers $ P.LogName ("PactService" <> show cid)
    let gasEnv = P.GasEnv 0 0.0 (P.constGasModel 1)

    (thePactDbEnv, checkpointEnv) <- initInMemoryCheckpointEnv loggers logger gasEnv

    -- env <- P.mkPureEnv loggers
    -- thePactDbEnv <- mkPurePactDbEnv' env
    -- theState <- mkPureState env

    -- withCheckpointer (_cpeCheckpointer checkpointEnv) Nothing  undefined
    -- saveInitial (_cpeCheckpointer checkpointEnv) thePactDbEnv

    let !pd = P.PublicData def def def
    let !pse = PactServiceEnv Nothing checkpointEnv (spv logger) pd

    evalStateT (runReaderT act pse) (PactServiceState thePactDbEnv Nothing)
    -- evalStateT (runReaderT act pse) (PactServiceState undefined Nothing)

initialPayloadState :: ChainwebVersion -> ChainId -> PactServiceM ()
initialPayloadState Test{} _ = pure ()
initialPayloadState TimedConsensus{} _ = pure ()
initialPayloadState PowConsensus{} _ = pure ()
initialPayloadState v@TimedCPM{} cid = createCoinContract v cid
initialPayloadState v@Testnet00 cid = createCoinContract v cid
initialPayloadState v@Testnet01 cid = createCoinContract v cid

createCoinContract :: ChainwebVersion -> ChainId -> PactServiceM ()
createCoinContract v cid = do
    let PayloadWithOutputs{..} = payloadBlock
        inputPayloadData = PayloadData (fmap fst _payloadWithOutputsTransactions)
                           _payloadWithOutputsMiner
                           _payloadWithOutputsPayloadHash
                           _payloadWithOutputsTransactionsHash
                           _payloadWithOutputsOutputsHash
        genesisHeader = genesisBlockHeader v cid
    txs <- execValidateBlock True genesisHeader inputPayloadData
    bitraverse_ throwM pure $ validateHashes txs genesisHeader

-- | Forever loop serving Pact ececution requests and reponses from the queues
serviceRequests :: MemPoolAccess -> TQueue RequestMsg -> PactServiceM ()
serviceRequests memPoolAccess reqQ = do
    logInfo "Starting service"
    go
  where
    go = do
        logDebug $ "serviceRequests: wait"
        msg <- liftIO $ getNextRequest reqQ
        logDebug $ "serviceRequests: " <> sshow msg
        case msg of
            CloseMsg -> return ()
            LocalMsg LocalReq{..} -> do
                r <- try $ execLocal _localRequest
                case r of
                  Left e -> liftIO $ putMVar _localResultVar $ Left e
                  Right r' -> liftIO $ putMVar _localResultVar r'
                go
            NewBlockMsg NewBlockReq {..} -> do
                txs <- try $ execNewBlock memPoolAccess _newBlockHeader _newMiner
                case txs of
                  Left (SomeException e) -> do
                    logError (show e)
                    liftIO $ putMVar _newResultVar $ Left $ PactInternalError $ T.pack $ show e
                  Right r -> liftIO $ putMVar _newResultVar $ Right r
                go
            ValidateBlockMsg ValidateBlockReq {..} -> do
                txs <- try $ execValidateBlock False _valBlockHeader _valPayloadData
                case txs of
                  Left (SomeException e) -> do
                    logError (show e)
                    liftIO $ putMVar _valResultVar $ Left $ PactInternalError $ T.pack $ show e
                  Right r ->
                    liftIO $ putMVar _valResultVar $ validateHashes r _valBlockHeader
                go


toTransactionBytes :: P.Command ByteString -> Transaction
toTransactionBytes cwTrans =
    let plBytes = encodeToByteString cwTrans
    in Transaction { _transactionBytes = plBytes }

toOutputBytes :: FullLogTxOutput -> TransactionOutput
toOutputBytes flOut =
    let hashedLogOut = toHashedLogTxOutput flOut
        outBytes = A.encode hashedLogOut
    in TransactionOutput { _transactionOutputBytes = toS outBytes }

toPayloadWithOutputs :: MinerInfo -> Transactions -> PayloadWithOutputs
toPayloadWithOutputs mi ts =
    let oldSeq = Seq.fromList $ V.toList $ _transactionPairs ts
        trans = fst <$> oldSeq
        transOuts = toOutputBytes . snd <$> oldSeq

        miner = toMinerData mi
        cb = CoinbaseOutput $ encodeToByteString $ _transactionCoinbase ts
        blockTrans = snd $ newBlockTransactions miner trans
        blockOuts = snd $ newBlockOutputs cb transOuts

        blockPL = blockPayload blockTrans blockOuts
        plData = payloadData blockTrans blockPL
     in payloadWithOutputs plData cb transOuts

validateHashes :: PayloadWithOutputs -> BlockHeader -> Either PactException PayloadWithOutputs
validateHashes pwo bHeader =
    let newHash = _payloadWithOutputsPayloadHash pwo
        prevHash = _blockPayloadHash bHeader
    in if newHash == prevHash
        then Right pwo
        else Left $ BlockValidationFailure $ toS $
            "Hash from Pact execution: " ++ show newHash ++
            " does not match the previously stored hash: " ++ show prevHash

restoreCheckpointer :: Maybe (BlockHeight,BlockHash) -> PactServiceM ()
restoreCheckpointer maybeBB = do
  checkPointer <- view (psCheckpointEnv . cpeCheckpointer)
  cpData <- liftIO $! case maybeBB of
    Nothing -> restore checkPointer Nothing
    Just (bHeight,bHash) -> restore checkPointer (Just (bHeight, bHash))
  updatePactDbEnv $! cpData

discardCheckpointer :: PactServiceM ()
discardCheckpointer = finalizeCheckpointer $ \checkPointer _ -> discard checkPointer

finalizeCheckpointer :: (Checkpointer -> PactDbEnv' -> IO ()) -> PactServiceM ()
finalizeCheckpointer finalize = do
  checkPointer <- view (psCheckpointEnv . cpeCheckpointer)
  use psPactDbEnv >>= \s -> liftIO $! finalize checkPointer s

-- liftCPErr :: Either String a -> PactServiceM a
-- liftCPErr = either internalError' return

-- withCheckpointer :: Maybe (BlockHeight, BlockHash) -> (PactDbEnv' -> IO CheckpointerResult) -> (CheckpointerResult -> CheckpointAction) -> PactServiceM CheckpointerResult
-- withCheckpointer mHeightHash action saveDiscardPredicate =
--   views (psCheckpointEnv . cpeCheckpointer) (\c -> runCheckpointer c mHeightHash action saveDiscardPredicate) >>=
--     liftIO

-- | Note: The BlockHeader param here is the PARENT HEADER of the new block-to-be
execNewBlock :: MemPoolAccess -> BlockHeader -> MinerInfo -> PactServiceM PayloadWithOutputs
execNewBlock memPoolAccess header miner = do
    let bHeight@(BlockHeight bh) = _blockHeight header
        bHash = _blockHash header

    newTrans <- liftIO $! memPoolAccess bHeight bHash header

    restoreCheckpointer $ Just (bHeight, bHash)

    -- locally run 'execTransactions' with updated blockheight data
    results <- locally (psPublicData . P.pdBlockHeight) (const bh) $
      execTransactions (Just bHash) miner newTrans

    discardCheckpointer

    return $! toPayloadWithOutputs miner results

-- | only for use in generating genesis blocks in tools
execNewGenesisBlock :: MinerInfo -> Vector ChainwebTransaction -> PactServiceM PayloadWithOutputs
execNewGenesisBlock miner newTrans = do

    restoreCheckpointer Nothing

    results <- execTransactions Nothing miner newTrans

    discardCheckpointer

    return $! toPayloadWithOutputs miner results

execLocal :: ChainwebTransaction ->
             PactServiceM (Either SomeException (P.CommandSuccess A.Value))
execLocal cmd = do

  bh <- use psStateValidated >>= \v -> case v of
    Nothing -> throwM NoBlockValidatedYet
    Just p -> return p

  restoreCheckpointer $ Just (_blockHeight bh,_blockHash bh)

  currentState <- use psPactDbEnv

  case currentState of
    PactDbEnv' pactdbenv -> do

      PactServiceEnv{..} <- ask

      r <- liftIO $ applyLocal (_cpeLogger _psCheckpointEnv) pactdbenv
           _psPublicData _psSpvSupport (fmap payloadObj cmd)

      discardCheckpointer

      return (fmap (\(P.CommandSuccess t) -> P.CommandSuccess (A.toJSON t)) r)



logg :: String -> String -> PactServiceM ()
logg level msg = view (psCheckpointEnv . cpeLogger)
  >>= \l -> liftIO $ P.logLog l level msg

logInfo :: String -> PactServiceM ()
logInfo = logg "INFO"

logError :: String -> PactServiceM ()
logError = logg "ERROR"

logDebug :: String -> PactServiceM ()
logDebug = logg "DEBUG"

-- | Validate a mined block.  Execute the transactions in Pact again as validation
-- | Note: The BlockHeader here is the header of the block being validated
execValidateBlock :: Bool -> BlockHeader -> PayloadData -> PactServiceM PayloadWithOutputs
execValidateBlock loadingGenesis currHeader plData = do

    miner <- decodeStrictOrThrow (_minerData $ _payloadDataMiner plData)

    let bHeight@(BlockHeight bh) = _blockHeight currHeader
        bParent = _blockParent currHeader
        bHash = _blockHash currHeader
        isGenesisBlock = isGenesisBlockHeader currHeader

    unless loadingGenesis $ logInfo $ "execValidateBlock: height=" ++ show bHeight ++
      ", parent=" ++ show bParent ++ ", hash=" ++ show bHash ++
      ", payloadHash=" ++ show (_blockPayloadHash currHeader)

    trans <- liftIO $ transactionsFromPayload plData

    restoreCheckpointer $ if loadingGenesis then Nothing else Just (pred bHeight, bParent)

    results <- locally (psPublicData . P.pdBlockHeight) (const bh) $
      execTransactions (if isGenesisBlock then Nothing else Just bParent) miner trans

    finalizeCheckpointer $ \cp _ -> save cp bHash
    -- finalizeCheckpointer $ \cp _ -> save cp bHeight bHash

    psStateValidated .= Just currHeader

    return $! toPayloadWithOutputs miner results

execTransactions :: Maybe BlockHash -> MinerInfo -> Vector ChainwebTransaction ->
                    PactServiceM Transactions
execTransactions nonGenesisParentHash miner ctxs = do

    currentState <- use psPactDbEnv

    case currentState of
      PactDbEnv' pactdbenv -> do

        let isGenesis = isNothing nonGenesisParentHash
            -- dbEnvPersist' = _pdbsDbEnv $! currentState

        -- dbEnv' <- liftIO $ toEnv' dbEnvPersist'

        coinOut <- runCoinbase nonGenesisParentHash pactdbenv miner
        txOuts <- applyPactCmds isGenesis pactdbenv ctxs miner

        -- newEnvPersist' <- liftIO $! toEnvPersist' dbEnv'

        -- let updatedState = PactDbState newEnvPersist'
        let cmdBSToTx = toTransactionBytes . fmap payloadBytes
            paired = V.zipWith (curry $ first cmdBSToTx) ctxs txOuts

        -- psStateDb .= updatedState

        return (Transactions paired coinOut)

runCoinbase
    :: Maybe BlockHash
    -> P.PactDbEnv p
    -> MinerInfo
    -> PactServiceM FullLogTxOutput
runCoinbase Nothing _ _ = return noCoinbase
runCoinbase (Just parentHash) dbEnv mi@MinerInfo{..} = do
  psEnv <- ask

  let reward = 42.0 -- TODO. Not dispatching on chainweb version yet as E's PR will have PublicData
      pd = _psPublicData psEnv
      logger = _cpeLogger . _psCheckpointEnv $ psEnv

  (result, txLogs) <- liftIO $ applyCoinbase logger dbEnv mi reward pd

  let output = A.object [ "result" A..= P._crResult result, "parentHash" A..= parentHash]

  pure $! FullLogTxOutput output txLogs

-- | Apply multiple Pact commands, incrementing the transaction Id for each
applyPactCmds
    :: Bool
    -> P.PactDbEnv p
    -> Vector (P.Command PayloadWithText)
    -> MinerInfo
    -> PactServiceM (Vector FullLogTxOutput)
applyPactCmds isGenesis dbenv cmds miner = V.mapM f cmds
  where
      f cmd = applyPactCmd isGenesis dbenv cmd miner

-- | Apply a single Pact command
applyPactCmd
    :: Bool
    -> P.PactDbEnv p
    -> P.Command PayloadWithText
    -> MinerInfo
    -> PactServiceM FullLogTxOutput
applyPactCmd isGenesis dbenv cmdIn miner = do
    psEnv <- ask
    let logger   = _cpeLogger . _psCheckpointEnv $ psEnv
        gasModel = P._geGasModel . _cpeGasEnv . _psCheckpointEnv $ psEnv
        pd       = _psPublicData psEnv
        spv      = _psSpvSupport psEnv

    -- cvt from Command PayloadWithTexts to Command ((Payload PublicMeta ParsedCode)
    let cmd = payloadObj <$> cmdIn
    (result, txLogs) <- liftIO $! if isGenesis
        then applyGenesisCmd logger dbenv pd spv cmd
        else applyCmd logger dbenv miner gasModel pd spv cmd

    pure $! FullLogTxOutput (P._crResult result) txLogs

updatePactDbEnv :: PactDbEnv'  -> PactServiceM ()
updatePactDbEnv = assign psPactDbEnv

transactionsFromPayload :: PayloadData -> IO (Vector ChainwebTransaction)
transactionsFromPayload plData = do
    let transSeq = _payloadDataTransactions plData
    let transList = toList transSeq
    let bytes = _transactionBytes <$> transList
    let eithers = toCWTransaction <$> bytes
    -- Note: if any transactions fail to convert, the final validation hash will fail to match
    -- the one computed during newBlock
    let theRights  =  rights eithers
    return $ V.fromList theRights
  where
    toCWTransaction bs = codecDecode chainwebPayloadCodec bs
