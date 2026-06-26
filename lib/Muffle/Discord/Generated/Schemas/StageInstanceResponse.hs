{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.StageInstanceResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.StageInstancesPrivacyLevels

data StageInstanceResponse = StageInstanceResponse
    { channelId :: SnowflakeType
    , discoverableDisabled :: Bool
    , guildId :: SnowflakeType
    , guildScheduledEventId :: Maybe SnowflakeType
    , id :: SnowflakeType
    , privacyLevel :: StageInstancesPrivacyLevels
    , topic :: String
    }
    deriving (Show, Eq, Generic)
