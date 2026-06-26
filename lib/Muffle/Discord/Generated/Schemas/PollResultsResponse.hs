{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PollResultsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.PollResultsEntryResponse

data PollResultsResponse = PollResultsResponse
    { answerCounts :: [PollResultsEntryResponse]
    , isFinalized :: Bool
    }
    deriving (Show, Eq, Generic)
