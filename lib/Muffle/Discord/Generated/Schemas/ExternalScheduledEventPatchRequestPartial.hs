{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ExternalScheduledEventPatchRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.EntityMetadataExternal
import Muffle.Discord.Generated.Schemas.GuildScheduledEventEntityTypes
import Muffle.Discord.Generated.Schemas.GuildScheduledEventPrivacyLevels
import Muffle.Discord.Generated.Schemas.RecurrenceRule
import Muffle.Discord.Generated.Schemas.GuildScheduledEventStatuses

data ExternalScheduledEventPatchRequestPartial = ExternalScheduledEventPatchRequestPartial
    { channelId :: Maybe SnowflakeType
    , description :: Maybe String
    , entityMetadata :: EntityMetadataExternal
    , entityType :: Maybe GuildScheduledEventEntityTypes
    , image :: Maybe String
    , name :: String
    , privacyLevel :: GuildScheduledEventPrivacyLevels
    , recurrenceRule :: Maybe RecurrenceRule
    , scheduledEndTime :: Maybe String
    , scheduledStartTime :: String
    , status :: Maybe GuildScheduledEventStatuses
    }
    deriving (Show, Eq, Generic)
