{-# LANGUAGE OverloadedStrings #-}

-- This module is auto-generated. DO NOT EDIT IT MANUALLY.

module Chainweb.Pact.Transactions.Mainnet7Transactions ( transactions ) where

import Data.Bifunctor (first)
import System.IO.Unsafe

import qualified Chainweb.Pact4.Transaction as Pact4
import Chainweb.Utils

transactions :: [Pact4.Transaction]
transactions =
  let decodeTx t =
        fromEitherM . (first (userError . show)) . codecDecode (Pact4.payloadCodec maxBound) =<< decodeB64UrlNoPaddingText t
  in unsafePerformIO $ mapM decodeTx [
    "eyJoYXNoIjoiMDVCdGo3ZUJaQlc3by1TYUxvVmhBaWNNVVBaVUJiRzZRVDhfTEFrQ3hIcyIsInNpZ3MiOltdLCJjbWQiOiJ7XCJuZXR3b3JrSWRcIjpudWxsLFwicGF5bG9hZFwiOntcImV4ZWNcIjp7XCJkYXRhXCI6bnVsbCxcImNvZGVcIjpcIihpbnRlcmZhY2UgZnVuZ2libGUtdjJcXG5cXG4gIFxcXCIgU3RhbmRhcmQgZm9yIGZ1bmdpYmxlIGNvaW5zIGFuZCB0b2tlbnMgYXMgc3BlY2lmaWVkIGluIEtJUC0wMDAyLiBcXFwiXFxuXFxuICAgOyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tXFxuICAgOyBTY2hlbWFcXG5cXG4gICAoZGVmc2NoZW1hIGFjY291bnQtZGV0YWlsc1xcbiAgICBAZG9jIFxcXCJTY2hlbWEgZm9yIHJlc3VsdHMgb2YgJ2FjY291bnQnIG9wZXJhdGlvbi5cXFwiXFxuICAgIEBtb2RlbCBbIChpbnZhcmlhbnQgKCE9IFxcXCJcXFwiIHNlbmRlcikpIF1cXG5cXG4gICAgYWNjb3VudDpzdHJpbmdcXG4gICAgYmFsYW5jZTpkZWNpbWFsXFxuICAgIGd1YXJkOmd1YXJkKVxcblxcblxcbiAgIDsgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLVxcbiAgIDsgQ2Fwc1xcblxcbiAgIChkZWZjYXAgVFJBTlNGRVI6Ym9vbFxcbiAgICAgKCBzZW5kZXI6c3RyaW5nXFxuICAgICAgIHJlY2VpdmVyOnN0cmluZ1xcbiAgICAgICBhbW91bnQ6ZGVjaW1hbFxcbiAgICAgKVxcbiAgICAgQGRvYyBcXFwiIE1hbmFnZWQgY2FwYWJpbGl0eSBzZWFsaW5nIEFNT1VOVCBmb3IgdHJhbnNmZXIgZnJvbSBTRU5ERVIgdG8gXFxcXFxcbiAgICAgICAgICBcXFxcIFJFQ0VJVkVSLiBQZXJtaXRzIGFueSBudW1iZXIgb2YgdHJhbnNmZXJzIHVwIHRvIEFNT1VOVC5cXFwiXFxuICAgICBAbWFuYWdlZCBhbW91bnQgVFJBTlNGRVItbWdyXFxuICAgICApXFxuXFxuICAgKGRlZnVuIFRSQU5TRkVSLW1ncjpkZWNpbWFsXFxuICAgICAoIG1hbmFnZWQ6ZGVjaW1hbFxcbiAgICAgICByZXF1ZXN0ZWQ6ZGVjaW1hbFxcbiAgICAgKVxcbiAgICAgQGRvYyBcXFwiIE1hbmFnZXMgVFJBTlNGRVIgQU1PVU5UIGxpbmVhcmx5LCBcXFxcXFxuICAgICAgICAgIFxcXFwgc3VjaCB0aGF0IGEgcmVxdWVzdCBmb3IgMS4wIGFtb3VudCBvbiBhIDMuMCBcXFxcXFxuICAgICAgICAgIFxcXFwgbWFuYWdlZCBxdWFudGl0eSBlbWl0cyB1cGRhdGVkIGFtb3VudCAyLjAuXFxcIlxcbiAgICAgKVxcblxcbiAgIDsgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLVxcbiAgIDsgRnVuY3Rpb25hbGl0eVxcblxcblxcbiAgKGRlZnVuIHRyYW5zZmVyOnN0cmluZ1xcbiAgICAoIHNlbmRlcjpzdHJpbmdcXG4gICAgICByZWNlaXZlcjpzdHJpbmdcXG4gICAgICBhbW91bnQ6ZGVjaW1hbFxcbiAgICApXFxuICAgIEBkb2MgXFxcIiBUcmFuc2ZlciBBTU9VTlQgYmV0d2VlbiBhY2NvdW50cyBTRU5ERVIgYW5kIFJFQ0VJVkVSLiBcXFxcXFxuICAgICAgICAgXFxcXCBGYWlscyBpZiBlaXRoZXIgU0VOREVSIG9yIFJFQ0VJVkVSIGRvZXMgbm90IGV4aXN0LlxcXCJcXG4gICAgQG1vZGVsIFsgKHByb3BlcnR5ICg-IGFtb3VudCAwLjApKVxcbiAgICAgICAgICAgICAocHJvcGVydHkgKCE9IHNlbmRlciBcXFwiXFxcIikpXFxuICAgICAgICAgICAgIChwcm9wZXJ0eSAoIT0gcmVjZWl2ZXIgXFxcIlxcXCIpKVxcbiAgICAgICAgICAgICAocHJvcGVydHkgKCE9IHNlbmRlciByZWNlaXZlcikpXFxuICAgICAgICAgICBdXFxuICAgIClcXG5cXG4gICAoZGVmdW4gdHJhbnNmZXItY3JlYXRlOnN0cmluZ1xcbiAgICAgKCBzZW5kZXI6c3RyaW5nXFxuICAgICAgIHJlY2VpdmVyOnN0cmluZ1xcbiAgICAgICByZWNlaXZlci1ndWFyZDpndWFyZFxcbiAgICAgICBhbW91bnQ6ZGVjaW1hbFxcbiAgICAgKVxcbiAgICAgQGRvYyBcXFwiIFRyYW5zZmVyIEFNT1VOVCBiZXR3ZWVuIGFjY291bnRzIFNFTkRFUiBhbmQgUkVDRUlWRVIuIFxcXFxcXG4gICAgICAgICAgXFxcXCBGYWlscyBpZiBTRU5ERVIgZG9lcyBub3QgZXhpc3QuIElmIFJFQ0VJVkVSIGV4aXN0cywgZ3VhcmQgXFxcXFxcbiAgICAgICAgICBcXFxcIG11c3QgbWF0Y2ggZXhpc3RpbmcgdmFsdWUuIElmIFJFQ0VJVkVSIGRvZXMgbm90IGV4aXN0LCBcXFxcXFxuICAgICAgICAgIFxcXFwgUkVDRUlWRVIgYWNjb3VudCBpcyBjcmVhdGVkIHVzaW5nIFJFQ0VJVkVSLUdVQVJELiBcXFxcXFxuICAgICAgICAgIFxcXFwgU3ViamVjdCB0byBtYW5hZ2VtZW50IGJ5IFRSQU5TRkVSIGNhcGFiaWxpdHkuXFxcIlxcbiAgICAgQG1vZGVsIFsgKHByb3BlcnR5ICg-IGFtb3VudCAwLjApKVxcbiAgICAgICAgICAgICAgKHByb3BlcnR5ICghPSBzZW5kZXIgXFxcIlxcXCIpKVxcbiAgICAgICAgICAgICAgKHByb3BlcnR5ICghPSByZWNlaXZlciBcXFwiXFxcIikpXFxuICAgICAgICAgICAgICAocHJvcGVydHkgKCE9IHNlbmRlciByZWNlaXZlcikpXFxuICAgICAgICAgICAgXVxcbiAgICAgKVxcblxcbiAgIChkZWZwYWN0IHRyYW5zZmVyLWNyb3NzY2hhaW46c3RyaW5nXFxuICAgICAoIHNlbmRlcjpzdHJpbmdcXG4gICAgICAgcmVjZWl2ZXI6c3RyaW5nXFxuICAgICAgIHJlY2VpdmVyLWd1YXJkOmd1YXJkXFxuICAgICAgIHRhcmdldC1jaGFpbjpzdHJpbmdcXG4gICAgICAgYW1vdW50OmRlY2ltYWxcXG4gICAgIClcXG4gICAgIEBkb2MgXFxcIiAyLXN0ZXAgcGFjdCB0byB0cmFuc2ZlciBBTU9VTlQgZnJvbSBTRU5ERVIgb24gY3VycmVudCBjaGFpbiBcXFxcXFxuICAgICAgICAgIFxcXFwgdG8gUkVDRUlWRVIgb24gVEFSR0VULUNIQUlOIHZpYSBTUFYgcHJvb2YuIFxcXFxcXG4gICAgICAgICAgXFxcXCBUQVJHRVQtQ0hBSU4gbXVzdCBiZSBkaWZmZXJlbnQgdGhhbiBjdXJyZW50IGNoYWluIGlkLiBcXFxcXFxuICAgICAgICAgIFxcXFwgRmlyc3Qgc3RlcCBkZWJpdHMgQU1PVU5UIGNvaW5zIGluIFNFTkRFUiBhY2NvdW50IGFuZCB5aWVsZHMgXFxcXFxcbiAgICAgICAgICBcXFxcIFJFQ0VJVkVSLCBSRUNFSVZFUl9HVUFSRCBhbmQgQU1PVU5UIHRvIFRBUkdFVC1DSEFJTi4gXFxcXFxcbiAgICAgICAgICBcXFxcIFNlY29uZCBzdGVwIGNvbnRpbnVhdGlvbiBpcyBzZW50IGludG8gVEFSR0VULUNIQUlOIHdpdGggcHJvb2YgXFxcXFxcbiAgICAgICAgICBcXFxcIG9idGFpbmVkIGZyb20gdGhlIHNwdiAnb3V0cHV0JyBlbmRwb2ludCBvZiBDaGFpbndlYi4gXFxcXFxcbiAgICAgICAgICBcXFxcIFByb29mIGlzIHZhbGlkYXRlZCBhbmQgUkVDRUlWRVIgaXMgY3JlZGl0ZWQgd2l0aCBBTU9VTlQgXFxcXFxcbiAgICAgICAgICBcXFxcIGNyZWF0aW5nIGFjY291bnQgd2l0aCBSRUNFSVZFUl9HVUFSRCBhcyBuZWNlc3NhcnkuXFxcIlxcbiAgICAgQG1vZGVsIFsgKHByb3BlcnR5ICg-IGFtb3VudCAwLjApKVxcbiAgICAgICAgICAgICAgKHByb3BlcnR5ICghPSBzZW5kZXIgXFxcIlxcXCIpKVxcbiAgICAgICAgICAgICAgKHByb3BlcnR5ICghPSByZWNlaXZlciBcXFwiXFxcIikpXFxuICAgICAgICAgICAgICAocHJvcGVydHkgKCE9IHNlbmRlciByZWNlaXZlcikpXFxuICAgICAgICAgICAgICAocHJvcGVydHkgKCE9IHRhcmdldC1jaGFpbiBcXFwiXFxcIikpXFxuICAgICAgICAgICAgXVxcbiAgICAgKVxcblxcbiAgIChkZWZ1biBnZXQtYmFsYW5jZTpkZWNpbWFsXFxuICAgICAoIGFjY291bnQ6c3RyaW5nIClcXG4gICAgIFxcXCIgR2V0IGJhbGFuY2UgZm9yIEFDQ09VTlQuIEZhaWxzIGlmIGFjY291bnQgZG9lcyBub3QgZXhpc3QuXFxcIlxcbiAgICAgKVxcblxcbiAgIChkZWZ1biBkZXRhaWxzOm9iamVjdHthY2NvdW50LWRldGFpbHN9XFxuICAgICAoIGFjY291bnQ6IHN0cmluZyApXFxuICAgICBcXFwiIEdldCBhbiBvYmplY3Qgd2l0aCBkZXRhaWxzIG9mIEFDQ09VTlQuIFxcXFxcXG4gICAgIFxcXFwgRmFpbHMgaWYgYWNjb3VudCBkb2VzIG5vdCBleGlzdC5cXFwiXFxuICAgICApXFxuXFxuICAgKGRlZnVuIHByZWNpc2lvbjppbnRlZ2VyXFxuICAgICAoKVxcbiAgICAgXFxcIlJldHVybiB0aGUgbWF4aW11bSBhbGxvd2VkIGRlY2ltYWwgcHJlY2lzaW9uLlxcXCJcXG4gICAgIClcXG5cXG4gICAoZGVmdW4gZW5mb3JjZS11bml0OmJvb2xcXG4gICAgICggYW1vdW50OmRlY2ltYWwgKVxcbiAgICAgXFxcIiBFbmZvcmNlIG1pbmltdW0gcHJlY2lzaW9uIGFsbG93ZWQgZm9yIHRyYW5zYWN0aW9ucy5cXFwiXFxuICAgICApXFxuXFxuICAgKGRlZnVuIGNyZWF0ZS1hY2NvdW50OnN0cmluZ1xcbiAgICAgKCBhY2NvdW50OnN0cmluZ1xcbiAgICAgICBndWFyZDpndWFyZFxcbiAgICAgKVxcbiAgICAgXFxcIiBDcmVhdGUgQUNDT1VOVCB3aXRoIDAuMCBiYWxhbmNlLCB3aXRoIEdVQVJEIGNvbnRyb2xsaW5nIGFjY2Vzcy5cXFwiXFxuICAgICApXFxuXFxuICAgKGRlZnVuIHJvdGF0ZTpzdHJpbmdcXG4gICAgICggYWNjb3VudDpzdHJpbmdcXG4gICAgICAgbmV3LWd1YXJkOmd1YXJkXFxuICAgICApXFxuICAgICBcXFwiIFJvdGF0ZSBndWFyZCBmb3IgQUNDT1VOVC4gVHJhbnNhY3Rpb24gaXMgdmFsaWRhdGVkIGFnYWluc3QgXFxcXFxcbiAgICAgXFxcXCBleGlzdGluZyBndWFyZCBiZWZvcmUgaW5zdGFsbGluZyBuZXcgZ3VhcmQuIFxcXCJcXG4gICAgIClcXG5cXG4pXFxuXCJ9fSxcInNpZ25lcnNcIjpbXSxcIm1ldGFcIjp7XCJjcmVhdGlvblRpbWVcIjowLFwidHRsXCI6MTcyODAwLFwiZ2FzTGltaXRcIjowLFwiY2hhaW5JZFwiOlwiXCIsXCJnYXNQcmljZVwiOjAsXCJzZW5kZXJcIjpcIlwifSxcIm5vbmNlXCI6XCJmdW5naWJsZS1hc3NldC12MlwifSJ9"
    ,
    "eyJoYXNoIjoibVZzMjNxNnJyUjZrWDFGX0ItamNCX05hLXdZdmR3dnRwa1cwQVNaZExjRSIsInNpZ3MiOltdLCJjbWQiOiJ7XCJuZXR3b3JrSWRcIjpudWxsLFwicGF5bG9hZFwiOntcImV4ZWNcIjp7XCJkYXRhXCI6bnVsbCxcImNvZGVcIjpcIihtb2R1bGUgY29pbiBHT1ZFUk5BTkNFXFxuXFxuICBAZG9jIFxcXCInY29pbicgcmVwcmVzZW50cyB0aGUgS2FkZW5hIENvaW4gQ29udHJhY3QuIFRoaXMgY29udHJhY3QgcHJvdmlkZXMgYm90aCB0aGUgXFxcXFxcbiAgXFxcXGJ1eS9yZWRlZW0gZ2FzIHN1cHBvcnQgaW4gdGhlIGZvcm0gb2YgJ2Z1bmQtdHgnLCBhcyB3ZWxsIGFzIHRyYW5zZmVyLCAgICAgICBcXFxcXFxuICBcXFxcY3JlZGl0LCBkZWJpdCwgY29pbmJhc2UsIGFjY291bnQgY3JlYXRpb24gYW5kIHF1ZXJ5LCBhcyB3ZWxsIGFzIFNQViBidXJuICAgIFxcXFxcXG4gIFxcXFxjcmVhdGUuIFRvIGFjY2VzcyB0aGUgY29pbiBjb250cmFjdCwgeW91IG1heSB1c2UgaXRzIGZ1bGx5LXF1YWxpZmllZCBuYW1lLCAgXFxcXFxcbiAgXFxcXG9yIGlzc3VlIHRoZSAnKHVzZSBjb2luKScgY29tbWFuZCBpbiB0aGUgYm9keSBvZiBhIG1vZHVsZSBkZWNsYXJhdGlvbi5cXFwiXFxuXFxuICBAbW9kZWxcXG4gICAgWyAoZGVmcHJvcGVydHkgY29uc2VydmVzLW1hc3NcXG4gICAgICAgICg9IChjb2x1bW4tZGVsdGEgY29pbi10YWJsZSAnYmFsYW5jZSkgMC4wKSlcXG5cXG4gICAgICAoZGVmcHJvcGVydHkgdmFsaWQtYWNjb3VudCAoYWNjb3VudDpzdHJpbmcpXFxuICAgICAgICAoYW5kXFxuICAgICAgICAgICg-PSAobGVuZ3RoIGFjY291bnQpIDMpXFxuICAgICAgICAgICg8PSAobGVuZ3RoIGFjY291bnQpIDI1NikpKVxcbiAgICBdXFxuXFxuICAoaW1wbGVtZW50cyBmdW5naWJsZS12MilcXG5cXG4gIDsgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS1cXG4gIDsgU2NoZW1hcyBhbmQgVGFibGVzXFxuXFxuICAoZGVmc2NoZW1hIGNvaW4tc2NoZW1hXFxuICAgIEBkb2MgXFxcIlRoZSBjb2luIGNvbnRyYWN0IHRva2VuIHNjaGVtYVxcXCJcXG4gICAgQG1vZGVsIFsgKGludmFyaWFudCAoPj0gYmFsYW5jZSAwLjApKSBdXFxuXFxuICAgIGJhbGFuY2U6ZGVjaW1hbFxcbiAgICBndWFyZDpndWFyZClcXG5cXG4gIChkZWZ0YWJsZSBjb2luLXRhYmxlOntjb2luLXNjaGVtYX0pXFxuXFxuICA7IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tXFxuICA7IENhcGFiaWxpdGllc1xcblxcbiAgKGRlZmNhcCBHT1ZFUk5BTkNFICgpXFxuICAgIChlbmZvcmNlIGZhbHNlIFxcXCJFbmZvcmNlIG5vbi11cGdyYWRlYWJpbGl0eVxcXCIpKVxcblxcbiAgKGRlZmNhcCBHQVMgKClcXG4gICAgXFxcIk1hZ2ljIGNhcGFiaWxpdHkgdG8gcHJvdGVjdCBnYXMgYnV5IGFuZCByZWRlZW1cXFwiXFxuICAgIHRydWUpXFxuXFxuICAoZGVmY2FwIENPSU5CQVNFICgpXFxuICAgIFxcXCJNYWdpYyBjYXBhYmlsaXR5IHRvIHByb3RlY3QgbWluZXIgcmV3YXJkXFxcIlxcbiAgICB0cnVlKVxcblxcbiAgKGRlZmNhcCBHRU5FU0lTICgpXFxuICAgIFxcXCJNYWdpYyBjYXBhYmlsaXR5IGNvbnN0cmFpbmluZyBnZW5lc2lzIHRyYW5zYWN0aW9uc1xcXCJcXG4gICAgdHJ1ZSlcXG5cXG4gIChkZWZjYXAgUkVNRURJQVRFICgpXFxuICAgIFxcXCJNYWdpYyBjYXBhYmlsaXR5IGZvciByZW1lZGlhdGlvbiB0cmFuc2FjdGlvbnNcXFwiXFxuICAgIHRydWUpXFxuXFxuICAoZGVmY2FwIERFQklUIChzZW5kZXI6c3RyaW5nKVxcbiAgICBcXFwiQ2FwYWJpbGl0eSBmb3IgbWFuYWdpbmcgZGViaXRpbmcgb3BlcmF0aW9uc1xcXCJcXG4gICAgKGVuZm9yY2UtZ3VhcmQgKGF0ICdndWFyZCAocmVhZCBjb2luLXRhYmxlIHNlbmRlcikpKVxcbiAgICAoZW5mb3JjZSAoIT0gc2VuZGVyIFxcXCJcXFwiKSBcXFwidmFsaWQgc2VuZGVyXFxcIikpXFxuXFxuICAoZGVmY2FwIENSRURJVCAocmVjZWl2ZXI6c3RyaW5nKVxcbiAgICBcXFwiQ2FwYWJpbGl0eSBmb3IgbWFuYWdpbmcgY3JlZGl0aW5nIG9wZXJhdGlvbnNcXFwiXFxuICAgIChlbmZvcmNlICghPSByZWNlaXZlciBcXFwiXFxcIikgXFxcInZhbGlkIHJlY2VpdmVyXFxcIikpXFxuXFxuICAoZGVmY2FwIFJPVEFURSAoYWNjb3VudDpzdHJpbmcpXFxuICAgIEBkb2MgXFxcIkF1dG9ub21vdXNseSBtYW5hZ2VkIGNhcGFiaWxpdHkgZm9yIGd1YXJkIHJvdGF0aW9uXFxcIlxcbiAgICBAbWFuYWdlZFxcbiAgICB0cnVlKVxcblxcbiAgKGRlZmNhcCBUUkFOU0ZFUjpib29sXFxuICAgICggc2VuZGVyOnN0cmluZ1xcbiAgICAgIHJlY2VpdmVyOnN0cmluZ1xcbiAgICAgIGFtb3VudDpkZWNpbWFsXFxuICAgIClcXG4gICAgQG1hbmFnZWQgYW1vdW50IFRSQU5TRkVSLW1nclxcbiAgICAoZW5mb3JjZSAoIT0gc2VuZGVyIHJlY2VpdmVyKSBcXFwic2FtZSBzZW5kZXIgYW5kIHJlY2VpdmVyXFxcIilcXG4gICAgKGVuZm9yY2UtdW5pdCBhbW91bnQpXFxuICAgIChlbmZvcmNlICg-IGFtb3VudCAwLjApIFxcXCJQb3NpdGl2ZSBhbW91bnRcXFwiKVxcbiAgICAoY29tcG9zZS1jYXBhYmlsaXR5IChERUJJVCBzZW5kZXIpKVxcbiAgICAoY29tcG9zZS1jYXBhYmlsaXR5IChDUkVESVQgcmVjZWl2ZXIpKVxcbiAgKVxcblxcbiAgKGRlZnVuIFRSQU5TRkVSLW1ncjpkZWNpbWFsXFxuICAgICggbWFuYWdlZDpkZWNpbWFsXFxuICAgICAgcmVxdWVzdGVkOmRlY2ltYWxcXG4gICAgKVxcblxcbiAgICAobGV0ICgobmV3YmFsICgtIG1hbmFnZWQgcmVxdWVzdGVkKSkpXFxuICAgICAgKGVuZm9yY2UgKD49IG5ld2JhbCAwLjApXFxuICAgICAgICAoZm9ybWF0IFxcXCJUUkFOU0ZFUiBleGNlZWRlZCBmb3IgYmFsYW5jZSB7fVxcXCIgW21hbmFnZWRdKSlcXG4gICAgICBuZXdiYWwpXFxuICApXFxuXFxuICA7IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tXFxuICA7IENvbnN0YW50c1xcblxcbiAgKGRlZmNvbnN0IENPSU5fQ0hBUlNFVCBDSEFSU0VUX0xBVElOMVxcbiAgICBcXFwiVGhlIGRlZmF1bHQgY29pbiBjb250cmFjdCBjaGFyYWN0ZXIgc2V0XFxcIilcXG5cXG4gIChkZWZjb25zdCBNSU5JTVVNX1BSRUNJU0lPTiAxMlxcbiAgICBcXFwiTWluaW11bSBhbGxvd2VkIHByZWNpc2lvbiBmb3IgY29pbiB0cmFuc2FjdGlvbnNcXFwiKVxcblxcbiAgKGRlZmNvbnN0IE1JTklNVU1fQUNDT1VOVF9MRU5HVEggM1xcbiAgICBcXFwiTWluaW11bSBhY2NvdW50IGxlbmd0aCBhZG1pc3NpYmxlIGZvciBjb2luIGFjY291bnRzXFxcIilcXG5cXG4gIChkZWZjb25zdCBNQVhJTVVNX0FDQ09VTlRfTEVOR1RIIDI1NlxcbiAgICBcXFwiTWF4aW11bSBhY2NvdW50IG5hbWUgbGVuZ3RoIGFkbWlzc2libGUgZm9yIGNvaW4gYWNjb3VudHNcXFwiKVxcblxcbiAgOyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLVxcbiAgOyBVdGlsaXRpZXNcXG5cXG4gIChkZWZ1biBlbmZvcmNlLXVuaXQ6Ym9vbCAoYW1vdW50OmRlY2ltYWwpXFxuICAgIEBkb2MgXFxcIkVuZm9yY2UgbWluaW11bSBwcmVjaXNpb24gYWxsb3dlZCBmb3IgY29pbiB0cmFuc2FjdGlvbnNcXFwiXFxuXFxuICAgIChlbmZvcmNlXFxuICAgICAgKD0gKGZsb29yIGFtb3VudCBNSU5JTVVNX1BSRUNJU0lPTilcXG4gICAgICAgICBhbW91bnQpXFxuICAgICAgKGZvcm1hdCBcXFwiQW1vdW50IHZpb2xhdGVzIG1pbmltdW0gcHJlY2lzaW9uOiB7fVxcXCIgW2Ftb3VudF0pKVxcbiAgICApXFxuXFxuICAoZGVmdW4gdmFsaWRhdGUtYWNjb3VudCAoYWNjb3VudDpzdHJpbmcpXFxuICAgIEBkb2MgXFxcIkVuZm9yY2UgdGhhdCBhbiBhY2NvdW50IG5hbWUgY29uZm9ybXMgdG8gdGhlIGNvaW4gY29udHJhY3QgXFxcXFxcbiAgICAgICAgIFxcXFxtaW5pbXVtIGFuZCBtYXhpbXVtIGxlbmd0aCByZXF1aXJlbWVudHMsIGFzIHdlbGwgYXMgdGhlICAgIFxcXFxcXG4gICAgICAgICBcXFxcbGF0aW4tMSBjaGFyYWN0ZXIgc2V0LlxcXCJcXG5cXG4gICAgKGVuZm9yY2VcXG4gICAgICAoaXMtY2hhcnNldCBDT0lOX0NIQVJTRVQgYWNjb3VudClcXG4gICAgICAoZm9ybWF0XFxuICAgICAgICBcXFwiQWNjb3VudCBkb2VzIG5vdCBjb25mb3JtIHRvIHRoZSBjb2luIGNvbnRyYWN0IGNoYXJzZXQ6IHt9XFxcIlxcbiAgICAgICAgW2FjY291bnRdKSlcXG5cXG4gICAgKGxldCAoKGFjY291bnQtbGVuZ3RoIChsZW5ndGggYWNjb3VudCkpKVxcblxcbiAgICAgIChlbmZvcmNlXFxuICAgICAgICAoPj0gYWNjb3VudC1sZW5ndGggTUlOSU1VTV9BQ0NPVU5UX0xFTkdUSClcXG4gICAgICAgIChmb3JtYXRcXG4gICAgICAgICAgXFxcIkFjY291bnQgbmFtZSBkb2VzIG5vdCBjb25mb3JtIHRvIHRoZSBtaW4gbGVuZ3RoIHJlcXVpcmVtZW50OiB7fVxcXCJcXG4gICAgICAgICAgW2FjY291bnRdKSlcXG5cXG4gICAgICAoZW5mb3JjZVxcbiAgICAgICAgKDw9IGFjY291bnQtbGVuZ3RoIE1BWElNVU1fQUNDT1VOVF9MRU5HVEgpXFxuICAgICAgICAoZm9ybWF0XFxuICAgICAgICAgIFxcXCJBY2NvdW50IG5hbWUgZG9lcyBub3QgY29uZm9ybSB0byB0aGUgbWF4IGxlbmd0aCByZXF1aXJlbWVudDoge31cXFwiXFxuICAgICAgICAgIFthY2NvdW50XSkpXFxuICAgICAgKVxcbiAgKVxcblxcbiAgOyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLVxcbiAgOyBDb2luIENvbnRyYWN0XFxuXFxuICAoZGVmdW4gZ2FzLW9ubHkgKClcXG4gICAgXFxcIlByZWRpY2F0ZSBmb3IgZ2FzLW9ubHkgdXNlciBndWFyZHMuXFxcIlxcbiAgICAocmVxdWlyZS1jYXBhYmlsaXR5IChHQVMpKSlcXG5cXG4gIChkZWZ1biBnYXMtZ3VhcmQgKGd1YXJkOmd1YXJkKVxcbiAgICBcXFwiUHJlZGljYXRlIGZvciBnYXMgKyBzaW5nbGUga2V5IHVzZXIgZ3VhcmRzXFxcIlxcbiAgICAoZW5mb3JjZS1vbmVcXG4gICAgICBcXFwiRW5mb3JjZSBlaXRoZXIgdGhlIHByZXNlbmNlIG9mIGEgR0FTIGNhcCBvciBrZXlzZXRcXFwiXFxuICAgICAgWyAoZ2FzLW9ubHkpXFxuICAgICAgICAoZW5mb3JjZS1ndWFyZCBndWFyZClcXG4gICAgICBdKSlcXG5cXG4gIChkZWZ1biBidXktZ2FzOnN0cmluZyAoc2VuZGVyOnN0cmluZyB0b3RhbDpkZWNpbWFsKVxcbiAgICBAZG9jIFxcXCJUaGlzIGZ1bmN0aW9uIGRlc2NyaWJlcyB0aGUgbWFpbiAnZ2FzIGJ1eScgb3BlcmF0aW9uLiBBdCB0aGlzIHBvaW50IFxcXFxcXG4gICAgXFxcXE1JTkVSIGhhcyBiZWVuIGNob3NlbiBmcm9tIHRoZSBwb29sLCBhbmQgd2lsbCBiZSB2YWxpZGF0ZWQuIFRoZSBTRU5ERVIgICBcXFxcXFxuICAgIFxcXFxvZiB0aGlzIHRyYW5zYWN0aW9uIGhhcyBzcGVjaWZpZWQgYSBnYXMgbGltaXQgTElNSVQgKG1heGltdW0gZ2FzKSBmb3IgICAgXFxcXFxcbiAgICBcXFxcdGhlIHRyYW5zYWN0aW9uLCBhbmQgdGhlIHByaWNlIGlzIHRoZSBzcG90IHByaWNlIG9mIGdhcyBhdCB0aGF0IHRpbWUuICAgIFxcXFxcXG4gICAgXFxcXFRoZSBnYXMgYnV5IHdpbGwgYmUgZXhlY3V0ZWQgcHJpb3IgdG8gZXhlY3V0aW5nIFNFTkRFUidzIGNvZGUuXFxcIlxcblxcbiAgICBAbW9kZWwgWyAocHJvcGVydHkgKD4gdG90YWwgMC4wKSlcXG4gICAgICAgICAgICAgKHByb3BlcnR5ICh2YWxpZC1hY2NvdW50IHNlbmRlcikpXFxuICAgICAgICAgICBdXFxuXFxuICAgICh2YWxpZGF0ZS1hY2NvdW50IHNlbmRlcilcXG5cXG4gICAgKGVuZm9yY2UtdW5pdCB0b3RhbClcXG4gICAgKGVuZm9yY2UgKD4gdG90YWwgMC4wKSBcXFwiZ2FzIHN1cHBseSBtdXN0IGJlIGEgcG9zaXRpdmUgcXVhbnRpdHlcXFwiKVxcblxcbiAgICAocmVxdWlyZS1jYXBhYmlsaXR5IChHQVMpKVxcbiAgICAod2l0aC1jYXBhYmlsaXR5IChERUJJVCBzZW5kZXIpXFxuICAgICAgKGRlYml0IHNlbmRlciB0b3RhbCkpXFxuICAgIClcXG5cXG4gIChkZWZ1biByZWRlZW0tZ2FzOnN0cmluZyAobWluZXI6c3RyaW5nIG1pbmVyLWd1YXJkOmd1YXJkIHNlbmRlcjpzdHJpbmcgdG90YWw6ZGVjaW1hbClcXG4gICAgQGRvYyBcXFwiVGhpcyBmdW5jdGlvbiBkZXNjcmliZXMgdGhlIG1haW4gJ3JlZGVlbSBnYXMnIG9wZXJhdGlvbi4gQXQgdGhpcyAgICBcXFxcXFxuICAgIFxcXFxwb2ludCwgdGhlIFNFTkRFUidzIHRyYW5zYWN0aW9uIGhhcyBiZWVuIGV4ZWN1dGVkLCBhbmQgdGhlIGdhcyB0aGF0ICAgICAgXFxcXFxcbiAgICBcXFxcd2FzIGNoYXJnZWQgaGFzIGJlZW4gY2FsY3VsYXRlZC4gTUlORVIgd2lsbCBiZSBjcmVkaXRlZCB0aGUgZ2FzIGNvc3QsICAgIFxcXFxcXG4gICAgXFxcXGFuZCBTRU5ERVIgd2lsbCByZWNlaXZlIHRoZSByZW1haW5kZXIgdXAgdG8gdGhlIGxpbWl0XFxcIlxcblxcbiAgICBAbW9kZWwgWyAocHJvcGVydHkgKD4gdG90YWwgMC4wKSlcXG4gICAgICAgICAgICAgKHByb3BlcnR5ICh2YWxpZC1hY2NvdW50IHNlbmRlcikpXFxuICAgICAgICAgICAgIChwcm9wZXJ0eSAodmFsaWQtYWNjb3VudCBtaW5lcikpXFxuICAgICAgICAgICBdXFxuXFxuICAgICh2YWxpZGF0ZS1hY2NvdW50IHNlbmRlcilcXG4gICAgKHZhbGlkYXRlLWFjY291bnQgbWluZXIpXFxuICAgIChlbmZvcmNlLXVuaXQgdG90YWwpXFxuXFxuICAgIChyZXF1aXJlLWNhcGFiaWxpdHkgKEdBUykpXFxuICAgIChsZXQqXFxuICAgICAgKChmZWUgKHJlYWQtZGVjaW1hbCBcXFwiZmVlXFxcIikpXFxuICAgICAgIChyZWZ1bmQgKC0gdG90YWwgZmVlKSkpXFxuXFxuICAgICAgKGVuZm9yY2UtdW5pdCBmZWUpXFxuICAgICAgKGVuZm9yY2UgKD49IGZlZSAwLjApXFxuICAgICAgICBcXFwiZmVlIG11c3QgYmUgYSBub24tbmVnYXRpdmUgcXVhbnRpdHlcXFwiKVxcblxcbiAgICAgIChlbmZvcmNlICg-PSByZWZ1bmQgMC4wKVxcbiAgICAgICAgXFxcInJlZnVuZCBtdXN0IGJlIGEgbm9uLW5lZ2F0aXZlIHF1YW50aXR5XFxcIilcXG5cXG4gICAgICAgIDsgZGlyZWN0bHkgdXBkYXRlIGluc3RlYWQgb2YgY3JlZGl0XFxuICAgICAgKHdpdGgtY2FwYWJpbGl0eSAoQ1JFRElUIHNlbmRlcilcXG4gICAgICAgIChpZiAoPiByZWZ1bmQgMC4wKVxcbiAgICAgICAgICAod2l0aC1yZWFkIGNvaW4tdGFibGUgc2VuZGVyXFxuICAgICAgICAgICAgeyBcXFwiYmFsYW5jZVxcXCIgOj0gYmFsYW5jZSB9XFxuICAgICAgICAgICAgKHVwZGF0ZSBjb2luLXRhYmxlIHNlbmRlclxcbiAgICAgICAgICAgICAgeyBcXFwiYmFsYW5jZVxcXCI6ICgrIGJhbGFuY2UgcmVmdW5kKSB9KSlcXG5cXG4gICAgICAgICAgXFxcIm5vb3BcXFwiKSlcXG5cXG4gICAgICAod2l0aC1jYXBhYmlsaXR5IChDUkVESVQgbWluZXIpXFxuICAgICAgICAoaWYgKD4gZmVlIDAuMClcXG4gICAgICAgICAgKGNyZWRpdCBtaW5lciBtaW5lci1ndWFyZCBmZWUpXFxuICAgICAgICAgIFxcXCJub29wXFxcIikpXFxuICAgICAgKVxcblxcbiAgICApXFxuXFxuICAoZGVmdW4gY3JlYXRlLWFjY291bnQ6c3RyaW5nIChhY2NvdW50OnN0cmluZyBndWFyZDpndWFyZClcXG4gICAgQG1vZGVsIFsgKHByb3BlcnR5ICh2YWxpZC1hY2NvdW50IGFjY291bnQpKSBdXFxuXFxuICAgICh2YWxpZGF0ZS1hY2NvdW50IGFjY291bnQpXFxuXFxuICAgIChpbnNlcnQgY29pbi10YWJsZSBhY2NvdW50XFxuICAgICAgeyBcXFwiYmFsYW5jZVxcXCIgOiAwLjBcXG4gICAgICAsIFxcXCJndWFyZFxcXCIgICA6IGd1YXJkXFxuICAgICAgfSlcXG4gICAgKVxcblxcbiAgKGRlZnVuIGdldC1iYWxhbmNlOmRlY2ltYWwgKGFjY291bnQ6c3RyaW5nKVxcbiAgICAod2l0aC1yZWFkIGNvaW4tdGFibGUgYWNjb3VudFxcbiAgICAgIHsgXFxcImJhbGFuY2VcXFwiIDo9IGJhbGFuY2UgfVxcbiAgICAgIGJhbGFuY2VcXG4gICAgICApXFxuICAgIClcXG5cXG4gIChkZWZ1biBkZXRhaWxzOm9iamVjdHtmdW5naWJsZS12Mi5hY2NvdW50LWRldGFpbHN9XFxuICAgICggYWNjb3VudDpzdHJpbmcgKVxcbiAgICAod2l0aC1yZWFkIGNvaW4tdGFibGUgYWNjb3VudFxcbiAgICAgIHsgXFxcImJhbGFuY2VcXFwiIDo9IGJhbFxcbiAgICAgICwgXFxcImd1YXJkXFxcIiA6PSBnIH1cXG4gICAgICB7IFxcXCJhY2NvdW50XFxcIiA6IGFjY291bnRcXG4gICAgICAsIFxcXCJiYWxhbmNlXFxcIiA6IGJhbFxcbiAgICAgICwgXFxcImd1YXJkXFxcIjogZyB9KVxcbiAgICApXFxuXFxuICAoZGVmdW4gcm90YXRlOnN0cmluZyAoYWNjb3VudDpzdHJpbmcgbmV3LWd1YXJkOmd1YXJkKVxcbiAgICAod2l0aC1jYXBhYmlsaXR5IChST1RBVEUgYWNjb3VudClcXG4gICAgICAod2l0aC1yZWFkIGNvaW4tdGFibGUgYWNjb3VudFxcbiAgICAgICAgeyBcXFwiZ3VhcmRcXFwiIDo9IG9sZC1ndWFyZCB9XFxuXFxuICAgICAgICAoZW5mb3JjZS1ndWFyZCBvbGQtZ3VhcmQpXFxuXFxuICAgICAgICAodXBkYXRlIGNvaW4tdGFibGUgYWNjb3VudFxcbiAgICAgICAgICB7IFxcXCJndWFyZFxcXCIgOiBuZXctZ3VhcmQgfVxcbiAgICAgICAgICApKSlcXG4gICAgKVxcblxcblxcbiAgKGRlZnVuIHByZWNpc2lvbjppbnRlZ2VyXFxuICAgICgpXFxuICAgIE1JTklNVU1fUFJFQ0lTSU9OKVxcblxcbiAgKGRlZnVuIHRyYW5zZmVyOnN0cmluZyAoc2VuZGVyOnN0cmluZyByZWNlaXZlcjpzdHJpbmcgYW1vdW50OmRlY2ltYWwpXFxuICAgIEBtb2RlbCBbIChwcm9wZXJ0eSBjb25zZXJ2ZXMtbWFzcylcXG4gICAgICAgICAgICAgKHByb3BlcnR5ICg-IGFtb3VudCAwLjApKVxcbiAgICAgICAgICAgICAocHJvcGVydHkgKHZhbGlkLWFjY291bnQgc2VuZGVyKSlcXG4gICAgICAgICAgICAgKHByb3BlcnR5ICh2YWxpZC1hY2NvdW50IHJlY2VpdmVyKSlcXG4gICAgICAgICAgICAgKHByb3BlcnR5ICghPSBzZW5kZXIgcmVjZWl2ZXIpKSBdXFxuXFxuICAgIChlbmZvcmNlICghPSBzZW5kZXIgcmVjZWl2ZXIpXFxuICAgICAgXFxcInNlbmRlciBjYW5ub3QgYmUgdGhlIHJlY2VpdmVyIG9mIGEgdHJhbnNmZXJcXFwiKVxcblxcbiAgICAodmFsaWRhdGUtYWNjb3VudCBzZW5kZXIpXFxuICAgICh2YWxpZGF0ZS1hY2NvdW50IHJlY2VpdmVyKVxcblxcbiAgICAoZW5mb3JjZSAoPiBhbW91bnQgMC4wKVxcbiAgICAgIFxcXCJ0cmFuc2ZlciBhbW91bnQgbXVzdCBiZSBwb3NpdGl2ZVxcXCIpXFxuXFxuICAgIChlbmZvcmNlLXVuaXQgYW1vdW50KVxcblxcbiAgICAod2l0aC1jYXBhYmlsaXR5IChUUkFOU0ZFUiBzZW5kZXIgcmVjZWl2ZXIgYW1vdW50KVxcbiAgICAgIChkZWJpdCBzZW5kZXIgYW1vdW50KVxcbiAgICAgICh3aXRoLXJlYWQgY29pbi10YWJsZSByZWNlaXZlclxcbiAgICAgICAgeyBcXFwiZ3VhcmRcXFwiIDo9IGcgfVxcblxcbiAgICAgICAgKGNyZWRpdCByZWNlaXZlciBnIGFtb3VudCkpXFxuICAgICAgKVxcbiAgICApXFxuXFxuICAoZGVmdW4gdHJhbnNmZXItY3JlYXRlOnN0cmluZ1xcbiAgICAoIHNlbmRlcjpzdHJpbmdcXG4gICAgICByZWNlaXZlcjpzdHJpbmdcXG4gICAgICByZWNlaXZlci1ndWFyZDpndWFyZFxcbiAgICAgIGFtb3VudDpkZWNpbWFsIClcXG5cXG4gICAgQG1vZGVsIFsgKHByb3BlcnR5IGNvbnNlcnZlcy1tYXNzKSBdXFxuXFxuICAgIChlbmZvcmNlICghPSBzZW5kZXIgcmVjZWl2ZXIpXFxuICAgICAgXFxcInNlbmRlciBjYW5ub3QgYmUgdGhlIHJlY2VpdmVyIG9mIGEgdHJhbnNmZXJcXFwiKVxcblxcbiAgICAodmFsaWRhdGUtYWNjb3VudCBzZW5kZXIpXFxuICAgICh2YWxpZGF0ZS1hY2NvdW50IHJlY2VpdmVyKVxcblxcbiAgICAoZW5mb3JjZSAoPiBhbW91bnQgMC4wKVxcbiAgICAgIFxcXCJ0cmFuc2ZlciBhbW91bnQgbXVzdCBiZSBwb3NpdGl2ZVxcXCIpXFxuXFxuICAgIChlbmZvcmNlLXVuaXQgYW1vdW50KVxcblxcbiAgICAod2l0aC1jYXBhYmlsaXR5IChUUkFOU0ZFUiBzZW5kZXIgcmVjZWl2ZXIgYW1vdW50KVxcbiAgICAgIChkZWJpdCBzZW5kZXIgYW1vdW50KVxcbiAgICAgIChjcmVkaXQgcmVjZWl2ZXIgcmVjZWl2ZXItZ3VhcmQgYW1vdW50KSlcXG4gICAgKVxcblxcbiAgKGRlZnVuIGNvaW5iYXNlOnN0cmluZyAoYWNjb3VudDpzdHJpbmcgYWNjb3VudC1ndWFyZDpndWFyZCBhbW91bnQ6ZGVjaW1hbClcXG4gICAgQGRvYyBcXFwiSW50ZXJuYWwgZnVuY3Rpb24gZm9yIHRoZSBpbml0aWFsIGNyZWF0aW9uIG9mIGNvaW5zLiAgVGhpcyBmdW5jdGlvbiBcXFxcXFxuICAgIFxcXFxjYW5ub3QgYmUgdXNlZCBvdXRzaWRlIG9mIHRoZSBjb2luIGNvbnRyYWN0LlxcXCJcXG5cXG4gICAgQG1vZGVsIFsgKHByb3BlcnR5ICh2YWxpZC1hY2NvdW50IGFjY291bnQpKVxcbiAgICAgICAgICAgICAocHJvcGVydHkgKD4gYW1vdW50IDAuMCkpXFxuICAgICAgICAgICBdXFxuXFxuICAgICh2YWxpZGF0ZS1hY2NvdW50IGFjY291bnQpXFxuICAgIChlbmZvcmNlLXVuaXQgYW1vdW50KVxcblxcbiAgICAocmVxdWlyZS1jYXBhYmlsaXR5IChDT0lOQkFTRSkpXFxuICAgICh3aXRoLWNhcGFiaWxpdHkgKENSRURJVCBhY2NvdW50KVxcbiAgICAgIChjcmVkaXQgYWNjb3VudCBhY2NvdW50LWd1YXJkIGFtb3VudCkpXFxuICAgIClcXG5cXG4gIChkZWZ1biByZW1lZGlhdGU6c3RyaW5nIChhY2NvdW50OnN0cmluZyBhbW91bnQ6ZGVjaW1hbClcXG4gICAgQGRvYyBcXFwiQWxsb3dzIGZvciByZW1lZGlhdGlvbiB0cmFuc2FjdGlvbnMuIFRoaXMgZnVuY3Rpb24gXFxcXFxcbiAgICAgICAgIFxcXFxpcyBwcm90ZWN0ZWQgYnkgdGhlIFJFTUVESUFURSBjYXBhYmlsaXR5XFxcIlxcbiAgICBAbW9kZWwgWyAocHJvcGVydHkgKHZhbGlkLWFjY291bnQgYWNjb3VudCkpXFxuICAgICAgICAgICAgIChwcm9wZXJ0eSAoPiBhbW91bnQgMC4wKSlcXG4gICAgICAgICAgIF1cXG5cXG4gICAgKHZhbGlkYXRlLWFjY291bnQgYWNjb3VudClcXG5cXG4gICAgKGVuZm9yY2UgKD4gYW1vdW50IDAuMClcXG4gICAgICBcXFwiUmVtZWRpYXRpb24gYW1vdW50IG11c3QgYmUgcG9zaXRpdmVcXFwiKVxcblxcbiAgICAoZW5mb3JjZS11bml0IGFtb3VudClcXG5cXG4gICAgKHJlcXVpcmUtY2FwYWJpbGl0eSAoUkVNRURJQVRFKSlcXG4gICAgKHdpdGgtcmVhZCBjb2luLXRhYmxlIGFjY291bnRcXG4gICAgICB7IFxcXCJiYWxhbmNlXFxcIiA6PSBiYWxhbmNlIH1cXG5cXG4gICAgICAoZW5mb3JjZSAoPD0gYW1vdW50IGJhbGFuY2UpIFxcXCJJbnN1ZmZpY2llbnQgZnVuZHNcXFwiKVxcblxcbiAgICAgICh1cGRhdGUgY29pbi10YWJsZSBhY2NvdW50XFxuICAgICAgICB7IFxcXCJiYWxhbmNlXFxcIiA6ICgtIGJhbGFuY2UgYW1vdW50KSB9XFxuICAgICAgICApKVxcbiAgICApXFxuXFxuICAoZGVmcGFjdCBmdW5kLXR4IChzZW5kZXI6c3RyaW5nIG1pbmVyOnN0cmluZyBtaW5lci1ndWFyZDpndWFyZCB0b3RhbDpkZWNpbWFsKVxcbiAgICBAZG9jIFxcXCInZnVuZC10eCcgaXMgYSBzcGVjaWFsIHBhY3QgdG8gZnVuZCBhIHRyYW5zYWN0aW9uIGluIHR3byBzdGVwcywgICAgIFxcXFxcXG4gICAgXFxcXHdpdGggdGhlIGFjdHVhbCB0cmFuc2FjdGlvbiB0cmFuc3BpcmluZyBpbiB0aGUgbWlkZGxlOiAgICAgICAgICAgICAgICAgICBcXFxcXFxuICAgIFxcXFwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXFxcXFxcbiAgICBcXFxcICAxKSBBIGJ1eWluZyBwaGFzZSwgZGViaXRpbmcgdGhlIHNlbmRlciBmb3IgdG90YWwgZ2FzIGFuZCBmZWUsIHlpZWxkaW5nIFxcXFxcXG4gICAgXFxcXCAgICAgVFhfTUFYX0NIQVJHRS4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcXFxcXFxuICAgIFxcXFwgIDIpIEEgc2V0dGxlbWVudCBwaGFzZSwgcmVzdW1pbmcgVFhfTUFYX0NIQVJHRSwgYW5kIGFsbG9jYXRpbmcgdG8gdGhlICAgXFxcXFxcbiAgICBcXFxcICAgICBjb2luYmFzZSBhY2NvdW50IGZvciB1c2VkIGdhcyBhbmQgZmVlLCBhbmQgc2VuZGVyIGFjY291bnQgZm9yIGJhbC0gIFxcXFxcXG4gICAgXFxcXCAgICAgYW5jZSAodW51c2VkIGdhcywgaWYgYW55KS5cXFwiXFxuXFxuICAgIEBtb2RlbCBbIChwcm9wZXJ0eSAoPiB0b3RhbCAwLjApKVxcbiAgICAgICAgICAgICAocHJvcGVydHkgKHZhbGlkLWFjY291bnQgc2VuZGVyKSlcXG4gICAgICAgICAgICAgKHByb3BlcnR5ICh2YWxpZC1hY2NvdW50IG1pbmVyKSlcXG4gICAgICAgICAgICAgOyhwcm9wZXJ0eSBjb25zZXJ2ZXMtbWFzcykgbm90IHN1cHBvcnRlZCB5ZXRcXG4gICAgICAgICAgIF1cXG5cXG4gICAgKHN0ZXAgKGJ1eS1nYXMgc2VuZGVyIHRvdGFsKSlcXG4gICAgKHN0ZXAgKHJlZGVlbS1nYXMgbWluZXIgbWluZXItZ3VhcmQgc2VuZGVyIHRvdGFsKSlcXG4gICAgKVxcblxcbiAgKGRlZnVuIGRlYml0OnN0cmluZyAoYWNjb3VudDpzdHJpbmcgYW1vdW50OmRlY2ltYWwpXFxuICAgIEBkb2MgXFxcIkRlYml0IEFNT1VOVCBmcm9tIEFDQ09VTlQgYmFsYW5jZVxcXCJcXG5cXG4gICAgQG1vZGVsIFsgKHByb3BlcnR5ICg-IGFtb3VudCAwLjApKVxcbiAgICAgICAgICAgICAocHJvcGVydHkgKHZhbGlkLWFjY291bnQgYWNjb3VudCkpXFxuICAgICAgICAgICBdXFxuXFxuICAgICh2YWxpZGF0ZS1hY2NvdW50IGFjY291bnQpXFxuXFxuICAgIChlbmZvcmNlICg-IGFtb3VudCAwLjApXFxuICAgICAgXFxcImRlYml0IGFtb3VudCBtdXN0IGJlIHBvc2l0aXZlXFxcIilcXG5cXG4gICAgKGVuZm9yY2UtdW5pdCBhbW91bnQpXFxuXFxuICAgIChyZXF1aXJlLWNhcGFiaWxpdHkgKERFQklUIGFjY291bnQpKVxcbiAgICAod2l0aC1yZWFkIGNvaW4tdGFibGUgYWNjb3VudFxcbiAgICAgIHsgXFxcImJhbGFuY2VcXFwiIDo9IGJhbGFuY2UgfVxcblxcbiAgICAgIChlbmZvcmNlICg8PSBhbW91bnQgYmFsYW5jZSkgXFxcIkluc3VmZmljaWVudCBmdW5kc1xcXCIpXFxuXFxuICAgICAgKHVwZGF0ZSBjb2luLXRhYmxlIGFjY291bnRcXG4gICAgICAgIHsgXFxcImJhbGFuY2VcXFwiIDogKC0gYmFsYW5jZSBhbW91bnQpIH1cXG4gICAgICAgICkpXFxuICAgIClcXG5cXG5cXG4gIChkZWZ1biBjcmVkaXQ6c3RyaW5nIChhY2NvdW50OnN0cmluZyBndWFyZDpndWFyZCBhbW91bnQ6ZGVjaW1hbClcXG4gICAgQGRvYyBcXFwiQ3JlZGl0IEFNT1VOVCB0byBBQ0NPVU5UIGJhbGFuY2VcXFwiXFxuXFxuICAgIEBtb2RlbCBbIChwcm9wZXJ0eSAoPiBhbW91bnQgMC4wKSlcXG4gICAgICAgICAgICAgKHByb3BlcnR5ICh2YWxpZC1hY2NvdW50IGFjY291bnQpKVxcbiAgICAgICAgICAgXVxcblxcbiAgICAodmFsaWRhdGUtYWNjb3VudCBhY2NvdW50KVxcblxcbiAgICAoZW5mb3JjZSAoPiBhbW91bnQgMC4wKSBcXFwiY3JlZGl0IGFtb3VudCBtdXN0IGJlIHBvc2l0aXZlXFxcIilcXG4gICAgKGVuZm9yY2UtdW5pdCBhbW91bnQpXFxuXFxuICAgIChyZXF1aXJlLWNhcGFiaWxpdHkgKENSRURJVCBhY2NvdW50KSlcXG4gICAgKHdpdGgtZGVmYXVsdC1yZWFkIGNvaW4tdGFibGUgYWNjb3VudFxcbiAgICAgIHsgXFxcImJhbGFuY2VcXFwiIDogMC4wLCBcXFwiZ3VhcmRcXFwiIDogZ3VhcmQgfVxcbiAgICAgIHsgXFxcImJhbGFuY2VcXFwiIDo9IGJhbGFuY2UsIFxcXCJndWFyZFxcXCIgOj0gcmV0ZyB9XFxuICAgICAgOyB3ZSBkb24ndCB3YW50IHRvIG92ZXJ3cml0ZSBhbiBleGlzdGluZyBndWFyZCB3aXRoIHRoZSB1c2VyLXN1cHBsaWVkIG9uZVxcbiAgICAgIChlbmZvcmNlICg9IHJldGcgZ3VhcmQpXFxuICAgICAgICBcXFwiYWNjb3VudCBndWFyZHMgZG8gbm90IG1hdGNoXFxcIilcXG5cXG4gICAgICAod3JpdGUgY29pbi10YWJsZSBhY2NvdW50XFxuICAgICAgICB7IFxcXCJiYWxhbmNlXFxcIiA6ICgrIGJhbGFuY2UgYW1vdW50KVxcbiAgICAgICAgLCBcXFwiZ3VhcmRcXFwiICAgOiByZXRnXFxuICAgICAgICB9KVxcbiAgICAgICkpXFxuXFxuXFxuICAoZGVmc2NoZW1hIGNyb3NzY2hhaW4tc2NoZW1hXFxuICAgIEBkb2MgXFxcIlNjaGVtYSBmb3IgeWllbGRlZCB2YWx1ZSBpbiBjcm9zcy1jaGFpbiB0cmFuc2ZlcnNcXFwiXFxuICAgIHJlY2VpdmVyOnN0cmluZ1xcbiAgICByZWNlaXZlci1ndWFyZDpndWFyZFxcbiAgICBhbW91bnQ6ZGVjaW1hbClcXG5cXG4gIChkZWZwYWN0IHRyYW5zZmVyLWNyb3NzY2hhaW46c3RyaW5nXFxuICAgICggc2VuZGVyOnN0cmluZ1xcbiAgICAgIHJlY2VpdmVyOnN0cmluZ1xcbiAgICAgIHJlY2VpdmVyLWd1YXJkOmd1YXJkXFxuICAgICAgdGFyZ2V0LWNoYWluOnN0cmluZ1xcbiAgICAgIGFtb3VudDpkZWNpbWFsIClcXG5cXG4gICAgQG1vZGVsIFsgKHByb3BlcnR5ICg-IGFtb3VudCAwLjApKVxcbiAgICAgICAgICAgICAocHJvcGVydHkgKHZhbGlkLWFjY291bnQgc2VuZGVyKSlcXG4gICAgICAgICAgICAgKHByb3BlcnR5ICh2YWxpZC1hY2NvdW50IHJlY2VpdmVyKSlcXG4gICAgICAgICAgIF1cXG5cXG4gICAgKHN0ZXBcXG4gICAgICAod2l0aC1jYXBhYmlsaXR5IChERUJJVCBzZW5kZXIpXFxuXFxuICAgICAgICAodmFsaWRhdGUtYWNjb3VudCBzZW5kZXIpXFxuICAgICAgICAodmFsaWRhdGUtYWNjb3VudCByZWNlaXZlcilcXG5cXG4gICAgICAgIChlbmZvcmNlICghPSBcXFwiXFxcIiB0YXJnZXQtY2hhaW4pIFxcXCJlbXB0eSB0YXJnZXQtY2hhaW5cXFwiKVxcbiAgICAgICAgKGVuZm9yY2UgKCE9IChhdCAnY2hhaW4taWQgKGNoYWluLWRhdGEpKSB0YXJnZXQtY2hhaW4pXFxuICAgICAgICAgIFxcXCJjYW5ub3QgcnVuIGNyb3NzLWNoYWluIHRyYW5zZmVycyB0byB0aGUgc2FtZSBjaGFpblxcXCIpXFxuXFxuICAgICAgICAoZW5mb3JjZSAoPiBhbW91bnQgMC4wKVxcbiAgICAgICAgICBcXFwidHJhbnNmZXIgcXVhbnRpdHkgbXVzdCBiZSBwb3NpdGl2ZVxcXCIpXFxuXFxuICAgICAgICAoZW5mb3JjZS11bml0IGFtb3VudClcXG5cXG4gICAgICAgIDs7IHN0ZXAgMSAtIGRlYml0IGRlbGV0ZS1hY2NvdW50IG9uIGN1cnJlbnQgY2hhaW5cXG4gICAgICAgIChkZWJpdCBzZW5kZXIgYW1vdW50KVxcblxcbiAgICAgICAgKGxldFxcbiAgICAgICAgICAoKGNyb3NzY2hhaW4tZGV0YWlsczpvYmplY3R7Y3Jvc3NjaGFpbi1zY2hlbWF9XFxuICAgICAgICAgICAgeyBcXFwicmVjZWl2ZXJcXFwiIDogcmVjZWl2ZXJcXG4gICAgICAgICAgICAsIFxcXCJyZWNlaXZlci1ndWFyZFxcXCIgOiByZWNlaXZlci1ndWFyZFxcbiAgICAgICAgICAgICwgXFxcImFtb3VudFxcXCIgOiBhbW91bnRcXG4gICAgICAgICAgICB9KSlcXG4gICAgICAgICAgKHlpZWxkIGNyb3NzY2hhaW4tZGV0YWlscyB0YXJnZXQtY2hhaW4pXFxuICAgICAgICAgICkpKVxcblxcbiAgICAoc3RlcFxcbiAgICAgIChyZXN1bWVcXG4gICAgICAgIHsgXFxcInJlY2VpdmVyXFxcIiA6PSByZWNlaXZlclxcbiAgICAgICAgLCBcXFwicmVjZWl2ZXItZ3VhcmRcXFwiIDo9IHJlY2VpdmVyLWd1YXJkXFxuICAgICAgICAsIFxcXCJhbW91bnRcXFwiIDo9IGFtb3VudFxcbiAgICAgICAgfVxcblxcbiAgICAgICAgOzsgc3RlcCAyIC0gY3JlZGl0IGNyZWF0ZSBhY2NvdW50IG9uIHRhcmdldCBjaGFpblxcbiAgICAgICAgKHdpdGgtY2FwYWJpbGl0eSAoQ1JFRElUIHJlY2VpdmVyKVxcbiAgICAgICAgICAoY3JlZGl0IHJlY2VpdmVyIHJlY2VpdmVyLWd1YXJkIGFtb3VudCkpXFxuICAgICAgICApKVxcbiAgICApXFxuXFxuXFxuICA7IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tXFxuICA7IENvaW4gYWxsb2NhdGlvbnNcXG5cXG4gIChkZWZzY2hlbWEgYWxsb2NhdGlvbi1zY2hlbWFcXG4gICAgQGRvYyBcXFwiR2VuZXNpcyBhbGxvY2F0aW9uIHJlZ2lzdHJ5XFxcIlxcbiAgICA7QG1vZGVsIFsgKGludmFyaWFudCAoPj0gYmFsYW5jZSAwLjApKSBdXFxuXFxuICAgIGJhbGFuY2U6ZGVjaW1hbFxcbiAgICBkYXRlOnRpbWVcXG4gICAgZ3VhcmQ6Z3VhcmRcXG4gICAgcmVkZWVtZWQ6Ym9vbClcXG5cXG4gIChkZWZ0YWJsZSBhbGxvY2F0aW9uLXRhYmxlOnthbGxvY2F0aW9uLXNjaGVtYX0pXFxuXFxuICAoZGVmdW4gY3JlYXRlLWFsbG9jYXRpb24tYWNjb3VudFxcbiAgICAoIGFjY291bnQ6c3RyaW5nXFxuICAgICAgZGF0ZTp0aW1lXFxuICAgICAga2V5c2V0LXJlZjpzdHJpbmdcXG4gICAgICBhbW91bnQ6ZGVjaW1hbFxcbiAgICApXFxuXFxuICAgIEBkb2MgXFxcIkFkZCBhbiBlbnRyeSB0byB0aGUgY29pbiBhbGxvY2F0aW9uIHRhYmxlLiBUaGlzIGZ1bmN0aW9uIFxcXFxcXG4gICAgICAgICBcXFxcYWxzbyBjcmVhdGVzIGEgY29ycmVzcG9uZGluZyBlbXB0eSBjb2luIGNvbnRyYWN0IGFjY291bnQgXFxcXFxcbiAgICAgICAgIFxcXFxvZiB0aGUgc2FtZSBuYW1lIGFuZCBndWFyZC4gUmVxdWlyZXMgR0VORVNJUyBjYXBhYmlsaXR5LiBcXFwiXFxuXFxuICAgIEBtb2RlbCBbIChwcm9wZXJ0eSAodmFsaWQtYWNjb3VudCBhY2NvdW50KSkgXVxcblxcbiAgICAocmVxdWlyZS1jYXBhYmlsaXR5IChHRU5FU0lTKSlcXG5cXG4gICAgKHZhbGlkYXRlLWFjY291bnQgYWNjb3VudClcXG4gICAgKGVuZm9yY2UgKD49IGFtb3VudCAwLjApXFxuICAgICAgXFxcImFsbG9jYXRpb24gYW1vdW50IG11c3QgYmUgbm9uLW5lZ2F0aXZlXFxcIilcXG5cXG4gICAgKGVuZm9yY2UtdW5pdCBhbW91bnQpXFxuXFxuICAgIChsZXRcXG4gICAgICAoKGd1YXJkOmd1YXJkIChrZXlzZXQtcmVmLWd1YXJkIGtleXNldC1yZWYpKSlcXG5cXG4gICAgICAoY3JlYXRlLWFjY291bnQgYWNjb3VudCBndWFyZClcXG5cXG4gICAgICAoaW5zZXJ0IGFsbG9jYXRpb24tdGFibGUgYWNjb3VudFxcbiAgICAgICAgeyBcXFwiYmFsYW5jZVxcXCIgOiBhbW91bnRcXG4gICAgICAgICwgXFxcImRhdGVcXFwiIDogZGF0ZVxcbiAgICAgICAgLCBcXFwiZ3VhcmRcXFwiIDogZ3VhcmRcXG4gICAgICAgICwgXFxcInJlZGVlbWVkXFxcIiA6IGZhbHNlXFxuICAgICAgICB9KSkpXFxuXFxuICAoZGVmdW4gcmVsZWFzZS1hbGxvY2F0aW9uXFxuICAgICggYWNjb3VudDpzdHJpbmcgKVxcblxcbiAgICBAZG9jIFxcXCJSZWxlYXNlIGZ1bmRzIGFzc29jaWF0ZWQgd2l0aCBhbGxvY2F0aW9uIEFDQ09VTlQgaW50byBtYWluIGxlZGdlci4gICBcXFxcXFxuICAgICAgICAgXFxcXEFDQ09VTlQgbXVzdCBhbHJlYWR5IGV4aXN0IGluIG1haW4gbGVkZ2VyLiBBbGxvY2F0aW9uIGlzIGRlYWN0aXZhdGVkIFxcXFxcXG4gICAgICAgICBcXFxcYWZ0ZXIgcmVsZWFzZS5cXFwiXFxuICAgIEBtb2RlbCBbIChwcm9wZXJ0eSAodmFsaWQtYWNjb3VudCBhY2NvdW50KSkgXVxcblxcbiAgICAodmFsaWRhdGUtYWNjb3VudCBhY2NvdW50KVxcblxcbiAgICAod2l0aC1yZWFkIGFsbG9jYXRpb24tdGFibGUgYWNjb3VudFxcbiAgICAgIHsgXFxcImJhbGFuY2VcXFwiIDo9IGJhbGFuY2VcXG4gICAgICAsIFxcXCJkYXRlXFxcIiA6PSByZWxlYXNlLXRpbWVcXG4gICAgICAsIFxcXCJyZWRlZW1lZFxcXCIgOj0gcmVkZWVtZWRcXG4gICAgICAsIFxcXCJndWFyZFxcXCIgOj0gZ3VhcmRcXG4gICAgICB9XFxuXFxuICAgICAgKGxldCAoKGN1cnItdGltZTp0aW1lIChhdCAnYmxvY2stdGltZSAoY2hhaW4tZGF0YSkpKSlcXG5cXG4gICAgICAgIChlbmZvcmNlIChub3QgcmVkZWVtZWQpXFxuICAgICAgICAgIFxcXCJhbGxvY2F0aW9uIGZ1bmRzIGhhdmUgYWxyZWFkeSBiZWVuIHJlZGVlbWVkXFxcIilcXG5cXG4gICAgICAgIChlbmZvcmNlXFxuICAgICAgICAgICg-PSBjdXJyLXRpbWUgcmVsZWFzZS10aW1lKVxcbiAgICAgICAgICAoZm9ybWF0IFxcXCJmdW5kcyBsb2NrZWQgdW50aWwge30uIGN1cnJlbnQgdGltZToge31cXFwiIFtyZWxlYXNlLXRpbWUgY3Vyci10aW1lXSkpXFxuXFxuICAgICAgICAoZW5mb3JjZS1ndWFyZCBndWFyZClcXG5cXG4gICAgICAgICh3aXRoLWNhcGFiaWxpdHkgKENSRURJVCBhY2NvdW50KVxcbiAgICAgICAgICAoY3JlZGl0IGFjY291bnQgZ3VhcmQgYmFsYW5jZSlcXG5cXG4gICAgICAgICAgKHVwZGF0ZSBhbGxvY2F0aW9uLXRhYmxlIGFjY291bnRcXG4gICAgICAgICAgICB7IFxcXCJyZWRlZW1lZFxcXCIgOiB0cnVlXFxuICAgICAgICAgICAgLCBcXFwiYmFsYW5jZVxcXCIgOiAwLjBcXG4gICAgICAgICAgICB9KVxcblxcbiAgICAgICAgICBcXFwiQWxsb2NhdGlvbiBzdWNjZXNzZnVsbHkgcmVsZWFzZWQgdG8gbWFpbiBsZWRnZXJcXFwiKVxcbiAgICApKSlcXG5cXG4pXFxuXCJ9fSxcInNpZ25lcnNcIjpbXSxcIm1ldGFcIjp7XCJjcmVhdGlvblRpbWVcIjowLFwidHRsXCI6MTcyODAwLFwiZ2FzTGltaXRcIjowLFwiY2hhaW5JZFwiOlwiXCIsXCJnYXNQcmljZVwiOjAsXCJzZW5kZXJcIjpcIlwifSxcIm5vbmNlXCI6XCJjb2luLWNvbnRyYWN0LXYyXCJ9In0"
    ,
    "eyJoYXNoIjoiSld1VXZmNlNWTzYyaFlKVEx6UTYxWTNxUS1BNEdwU1VXc0l4RXFmSjN0SSIsInNpZ3MiOltdLCJjbWQiOiJ7XCJuZXR3b3JrSWRcIjpudWxsLFwicGF5bG9hZFwiOntcImV4ZWNcIjp7XCJkYXRhXCI6bnVsbCxcImNvZGVcIjpcIihjb2luLnJlbWVkaWF0ZSBcXFwiYTMwZmZkM2JhN2ZhMDhkNGFhZmNmZDlmMTU1OTRkMjBlNzMyYjhmZGRhNDNmMDI0NzBkNzZiN2ViZmE0NjdlNlxcXCIgMjMwNDUyLjMwMDAwKVwifX0sXCJzaWduZXJzXCI6W10sXCJtZXRhXCI6e1wiY3JlYXRpb25UaW1lXCI6MCxcInR0bFwiOjE3MjgwMCxcImdhc0xpbWl0XCI6MCxcImNoYWluSWRcIjpcIlwiLFwiZ2FzUHJpY2VcIjowLFwic2VuZGVyXCI6XCJcIn0sXCJub25jZVwiOlwibWFpbm5ldC1yZW1lZGlhdGlvbnMtN1wifSJ9"
    ]
