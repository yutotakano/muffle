{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ExternalScheduledEventCreateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.EntityMetadataExternal
import Muffle.Discord.Generated.Schemas.GuildScheduledEventEntityTypes
import Muffle.Discord.Generated.Schemas.GuildScheduledEventPrivacyLevels
import Muffle.Discord.Generated.Schemas.RecurrenceRule

data ExternalScheduledEventCreateRequest = ExternalScheduledEventCreateRequest
    { channelId :: Maybe SnowflakeType
    , description :: Maybe String
    , entityMetadata :: EntityMetadataExternal
    , entityType :: GuildScheduledEventEntityTypes
    , image :: Maybe String
    , name :: String
    , privacyLevel :: GuildScheduledEventPrivacyLevels
    , recurrenceRule :: Maybe RecurrenceRule
    , scheduledEndTime :: Maybe String
    , scheduledStartTime :: String
    }
    deriving (Show, Eq, Generic)
