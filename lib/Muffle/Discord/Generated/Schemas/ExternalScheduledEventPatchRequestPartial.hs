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
    { channelId :: Maybe (Maybe SnowflakeType)
    , description :: Maybe (Maybe String)
    , entityMetadata :: Maybe EntityMetadataExternal
    , entityType :: Maybe (Maybe GuildScheduledEventEntityTypes)
    , image :: Maybe (Maybe String)
    , name :: Maybe String
    , privacyLevel :: Maybe GuildScheduledEventPrivacyLevels
    , recurrenceRule :: Maybe (Maybe RecurrenceRule)
    , scheduledEndTime :: Maybe (Maybe String)
    , scheduledStartTime :: Maybe String
    , status :: Maybe (Maybe GuildScheduledEventStatuses)
    }
    deriving (Show, Eq, Generic)
