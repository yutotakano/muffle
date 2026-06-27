{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.StageScheduledEventResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
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

instance FromJSON StageScheduledEventResponse where
    parseJSON = withObject "StageScheduledEventResponse" $ \o ->
        StageScheduledEventResponse <$>
            o .: "channel_id"
            <*> o .: "creator"
            <*> o .: "creator_id"
            <*> o .: "description"
            <*> o .: "entity_id"
            <*> o .: "entity_metadata"
            <*> o .: "entity_type"
            <*> o .: "guild_id"
            <*> o .: "guild_scheduled_event_exceptions"
            <*> o .: "id"
            <*> o .: "image"
            <*> o .: "name"
            <*> o .: "privacy_level"
            <*> o .: "recurrence_rule"
            <*> o .: "scheduled_end_time"
            <*> o .: "scheduled_start_time"
            <*> o .: "status"
            <*> o .: "user_count"
            <*> o .: "user_rsvp"