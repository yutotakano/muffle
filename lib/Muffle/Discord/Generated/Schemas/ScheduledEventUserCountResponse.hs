{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ScheduledEventUserCountResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data ScheduledEventUserCountResponse = ScheduledEventUserCountResponse
    { guildScheduledEventCount :: Int32
    , guildScheduledEventExceptionCounts :: ScheduledEventUserCountResponseGuildScheduledEventExceptionCounts
    }
    deriving (Show, Eq, Generic)
data ScheduledEventUserCountResponseGuildScheduledEventExceptionCounts = ScheduledEventUserCountResponseGuildScheduledEventExceptionCounts
    { 
    }
    deriving (Show, Eq, Generic)
