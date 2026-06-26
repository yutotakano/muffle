{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PollResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.PollAnswerResponse
import Muffle.Discord.Generated.Schemas.PollLayoutTypes
import Muffle.Discord.Generated.Schemas.PollMediaResponse
import Muffle.Discord.Generated.Schemas.PollResultsResponse

data PollResponse = PollResponse
    { allowMultiselect :: Bool
    , answers :: [PollAnswerResponse]
    , expiry :: String
    , layoutType :: PollLayoutTypes
    , question :: PollMediaResponse
    , results :: PollResultsResponse
    }
    deriving (Show, Eq, Generic)
