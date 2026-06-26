{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PollResultsEntryResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data PollResultsEntryResponse = PollResultsEntryResponse
    { count :: Int32
    , id :: Int32
    , meVoted :: Bool
    }
    deriving (Show, Eq, Generic)
