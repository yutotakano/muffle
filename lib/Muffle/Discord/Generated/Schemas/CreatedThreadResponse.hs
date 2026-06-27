{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.CreatedThreadResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ThreadMemberResponse
import Muffle.Discord.Generated.Schemas.ThreadMetadataResponse
import Muffle.Discord.Generated.Schemas.ChannelTypes
import Muffle.Discord.Generated.Schemas.VideoQualityModes

data CreatedThreadResponse = CreatedThreadResponse
    { appliedTags :: Maybe [SnowflakeType]
    , bitrate :: Maybe Int32
    , flags :: Int32
    , guildId :: SnowflakeType
    , id :: SnowflakeType
    , lastMessageId :: Maybe (Maybe SnowflakeType)
    , lastPinTimestamp :: Maybe (Maybe String)
    , member :: Maybe ThreadMemberResponse
    , memberCount :: Int32
    , messageCount :: Int32
    , name :: String
    , ownerId :: SnowflakeType
    , parentId :: Maybe (Maybe SnowflakeType)
    , permissions :: Maybe String
    , rateLimitPerUser :: Maybe Int32
    , rtcRegion :: Maybe (Maybe String)
    , threadMetadata :: ThreadMetadataResponse
    , totalMessageSent :: Int32
    , type' :: ChannelTypes
    , userLimit :: Maybe Int32
    , videoQualityMode :: Maybe VideoQualityModes
    }
    deriving (Show, Eq, Generic)

instance FromJSON CreatedThreadResponse where
    parseJSON = withObject "CreatedThreadResponse" $ \o ->
        CreatedThreadResponse <$>
            o .: "applied_tags"
            <*> o .: "bitrate"
            <*> o .: "flags"
            <*> o .: "guild_id"
            <*> o .: "id"
            <*> o .: "last_message_id"
            <*> o .: "last_pin_timestamp"
            <*> o .: "member"
            <*> o .: "member_count"
            <*> o .: "message_count"
            <*> o .: "name"
            <*> o .: "owner_id"
            <*> o .: "parent_id"
            <*> o .: "permissions"
            <*> o .: "rate_limit_per_user"
            <*> o .: "rtc_region"
            <*> o .: "thread_metadata"
            <*> o .: "total_message_sent"
            <*> o .: "type"
            <*> o .: "user_limit"
            <*> o .: "video_quality_mode"