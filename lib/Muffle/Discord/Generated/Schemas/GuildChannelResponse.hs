{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildChannelResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ForumTagResponse
import Muffle.Discord.Generated.Schemas.ThreadAutoArchiveDuration
import Muffle.Discord.Generated.Schemas.ForumLayout
import Muffle.Discord.Generated.Schemas.DefaultReactionEmojiResponse
import Muffle.Discord.Generated.Schemas.ThreadSortOrder
import Muffle.Discord.Generated.Schemas.ThreadSearchTagSetting
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ChannelPermissionOverwriteResponse
import Muffle.Discord.Generated.Schemas.ChannelTypes
import Muffle.Discord.Generated.Schemas.VideoQualityModes

data GuildChannelResponse = GuildChannelResponse
    { availableTags :: Maybe [ForumTagResponse]
    , bitrate :: Maybe Int32
    , defaultAutoArchiveDuration :: Maybe ThreadAutoArchiveDuration
    , defaultForumLayout :: Maybe ForumLayout
    , defaultReactionEmoji :: Maybe (Maybe DefaultReactionEmojiResponse)
    , defaultSortOrder :: Maybe (Maybe ThreadSortOrder)
    , defaultTagSetting :: Maybe (Maybe ThreadSearchTagSetting)
    , defaultThreadRateLimitPerUser :: Maybe Int32
    , flags :: Int32
    , guildId :: SnowflakeType
    , id :: SnowflakeType
    , lastMessageId :: Maybe (Maybe SnowflakeType)
    , lastPinTimestamp :: Maybe (Maybe String)
    , name :: String
    , nsfw :: Maybe Bool
    , parentId :: Maybe (Maybe SnowflakeType)
    , permissionOverwrites :: Maybe [ChannelPermissionOverwriteResponse]
    , permissions :: Maybe String
    , position :: Int32
    , rateLimitPerUser :: Maybe Int32
    , rtcRegion :: Maybe (Maybe String)
    , topic :: Maybe (Maybe String)
    , type' :: ChannelTypes
    , userLimit :: Maybe Int32
    , videoQualityMode :: Maybe VideoQualityModes
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildChannelResponse where
    parseJSON = withObject "GuildChannelResponse" $ \o ->
        GuildChannelResponse <$>
            o .: "available_tags"
            <*> o .: "bitrate"
            <*> o .: "default_auto_archive_duration"
            <*> o .: "default_forum_layout"
            <*> o .: "default_reaction_emoji"
            <*> o .: "default_sort_order"
            <*> o .: "default_tag_setting"
            <*> o .: "default_thread_rate_limit_per_user"
            <*> o .: "flags"
            <*> o .: "guild_id"
            <*> o .: "id"
            <*> o .: "last_message_id"
            <*> o .: "last_pin_timestamp"
            <*> o .: "name"
            <*> o .: "nsfw"
            <*> o .: "parent_id"
            <*> o .: "permission_overwrites"
            <*> o .: "permissions"
            <*> o .: "position"
            <*> o .: "rate_limit_per_user"
            <*> o .: "rtc_region"
            <*> o .: "topic"
            <*> o .: "type"
            <*> o .: "user_limit"
            <*> o .: "video_quality_mode"