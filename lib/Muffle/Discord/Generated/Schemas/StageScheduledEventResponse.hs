{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.StageScheduledEventResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.EntityMetadataStageInstanceResponse
import Muffle.Discord.Generated.Schemas.GuildScheduledEventEntityTypes
import Muffle.Discord.Generated.Schemas.GuildScheduledEventExceptionResponse
import Muffle.Discord.Generated.Schemas.GuildScheduledEventPrivacyLevels
import Muffle.Discord.Generated.Schemas.RecurrenceRuleResponse
import Muffle.Discord.Generated.Schemas.GuildScheduledEventStatuses
import Muffle.Discord.Generated.Schemas.ScheduledEventUserResponse

data StageScheduledEventResponse = StageScheduledEventResponse
    { channelId :: Maybe SnowflakeType
    , creator :: Maybe UserResponse
    , creatorId :: Maybe SnowflakeType
    , description :: Maybe String
    , entityId :: Maybe SnowflakeType
    , entityMetadata :: Maybe EntityMetadataStageInstanceResponse
    , entityType :: GuildScheduledEventEntityTypes
    , guildId :: SnowflakeType
    , guildScheduledEventExceptions :: [GuildScheduledEventExceptionResponse]
    , id :: SnowflakeType
    , image :: Maybe String
    , name :: String
    , privacyLevel :: GuildScheduledEventPrivacyLevels
    , recurrenceRule :: Maybe RecurrenceRuleResponse
    , scheduledEndTime :: Maybe String
    , scheduledStartTime :: String
    , status :: GuildScheduledEventStatuses
    , userCount :: Maybe Int32
    , userRsvp :: Maybe (Maybe ScheduledEventUserResponse)
    }
    deriving (Show, Eq, Generic)
