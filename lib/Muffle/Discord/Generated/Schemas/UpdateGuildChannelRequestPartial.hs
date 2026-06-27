{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UpdateGuildChannelRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UpdateThreadTagRequest
import Muffle.Discord.Generated.Schemas.ThreadAutoArchiveDuration
import Muffle.Discord.Generated.Schemas.ForumLayout
import Muffle.Discord.Generated.Schemas.UpdateDefaultReactionEmojiRequest
import Muffle.Discord.Generated.Schemas.ThreadSortOrder
import Muffle.Discord.Generated.Schemas.ThreadSearchTagSetting
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ChannelPermissionOverwriteRequest
import Muffle.Discord.Generated.Schemas.ChannelTypes
import Muffle.Discord.Generated.Schemas.VideoQualityModes

data UpdateGuildChannelRequestPartial = UpdateGuildChannelRequestPartial
    { availableTags :: Maybe [UpdateThreadTagRequest]
    , bitrate :: Maybe (Maybe Int32)
    , defaultAutoArchiveDuration :: Maybe (Maybe ThreadAutoArchiveDuration)
    , defaultForumLayout :: Maybe (Maybe ForumLayout)
    , defaultReactionEmoji :: Maybe (Maybe UpdateDefaultReactionEmojiRequest)
    , defaultSortOrder :: Maybe (Maybe ThreadSortOrder)
    , defaultTagSetting :: Maybe (Maybe ThreadSearchTagSetting)
    , defaultThreadRateLimitPerUser :: Maybe (Maybe Integer)
    , flags :: Maybe (Maybe Integer)
    , name :: Maybe String
    , nsfw :: Maybe (Maybe Bool)
    , parentId :: Maybe (Maybe SnowflakeType)
    , permissionOverwrites :: Maybe [ChannelPermissionOverwriteRequest]
    , position :: Maybe (Maybe Int32)
    , rateLimitPerUser :: Maybe (Maybe Integer)
    , rtcRegion :: Maybe (Maybe String)
    , topic :: Maybe (Maybe String)
    , type' :: Maybe (Maybe ChannelTypes)
    , userLimit :: Maybe (Maybe Int32)
    , videoQualityMode :: Maybe (Maybe VideoQualityModes)
    }
    deriving (Show, Eq, Generic)

instance FromJSON UpdateGuildChannelRequestPartial where
    parseJSON = withObject "UpdateGuildChannelRequestPartial" $ \o ->
        UpdateGuildChannelRequestPartial <$>
            o .: "available_tags"
            <*> o .: "bitrate"
            <*> o .: "default_auto_archive_duration"
            <*> o .: "default_forum_layout"
            <*> o .: "default_reaction_emoji"
            <*> o .: "default_sort_order"
            <*> o .: "default_tag_setting"
            <*> o .: "default_thread_rate_limit_per_user"
            <*> o .: "flags"
            <*> o .: "name"
            <*> o .: "nsfw"
            <*> o .: "parent_id"
            <*> o .: "permission_overwrites"
            <*> o .: "position"
            <*> o .: "rate_limit_per_user"
            <*> o .: "rtc_region"
            <*> o .: "topic"
            <*> o .: "type"
            <*> o .: "user_limit"
            <*> o .: "video_quality_mode"