{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.VoiceScheduledEventCreateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.EntityMetadataVoice
import Muffle.Discord.Generated.Schemas.GuildScheduledEventEntityTypes
import Muffle.Discord.Generated.Schemas.GuildScheduledEventPrivacyLevels
import Muffle.Discord.Generated.Schemas.RecurrenceRule

data VoiceScheduledEventCreateRequest = VoiceScheduledEventCreateRequest
    { channelId :: Maybe (Maybe SnowflakeType)
    , description :: Maybe (Maybe String)
    , entityMetadata :: Maybe (Maybe EntityMetadataVoice)
    , entityType :: GuildScheduledEventEntityTypes
    , image :: Maybe (Maybe String)
    , name :: String
    , privacyLevel :: GuildScheduledEventPrivacyLevels
    , recurrenceRule :: Maybe (Maybe RecurrenceRule)
    , scheduledEndTime :: Maybe (Maybe String)
    , scheduledStartTime :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON VoiceScheduledEventCreateRequest where
    parseJSON = withObject "VoiceScheduledEventCreateRequest" $ \o ->
        VoiceScheduledEventCreateRequest <$>
            o .: "channel_id"
            <*> o .: "description"
            <*> o .: "entity_metadata"
            <*> o .: "entity_type"
            <*> o .: "image"
            <*> o .: "name"
            <*> o .: "privacy_level"
            <*> o .: "recurrence_rule"
            <*> o .: "scheduled_end_time"
            <*> o .: "scheduled_start_time"