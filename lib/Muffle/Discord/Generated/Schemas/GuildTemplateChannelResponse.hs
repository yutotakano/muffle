{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildTemplateChannelResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.GuildTemplateChannelTags
import Muffle.Discord.Generated.Schemas.ThreadAutoArchiveDuration
import Muffle.Discord.Generated.Schemas.ForumLayout
import Muffle.Discord.Generated.Schemas.DefaultReactionEmojiResponse
import Muffle.Discord.Generated.Schemas.ThreadSortOrder
import Muffle.Discord.Generated.Schemas.ThreadSearchTagSetting
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ChannelPermissionOverwriteResponse
import Muffle.Discord.Generated.Schemas.ChannelTypes

data GuildTemplateChannelResponse = GuildTemplateChannelResponse
    { availableTags :: [GuildTemplateChannelTags]
    , bitrate :: Int32
    , defaultAutoArchiveDuration :: Maybe ThreadAutoArchiveDuration
    , defaultForumLayout :: Maybe ForumLayout
    , defaultReactionEmoji :: Maybe DefaultReactionEmojiResponse
    , defaultSortOrder :: Maybe ThreadSortOrder
    , defaultTagSetting :: Maybe ThreadSearchTagSetting
    , defaultThreadRateLimitPerUser :: Maybe Int32
    , id :: Maybe Int32
    , name :: Maybe String
    , nsfw :: Bool
    , parentId :: Maybe SnowflakeType
    , permissionOverwrites :: [ChannelPermissionOverwriteResponse]
    , position :: Maybe Int32
    , rateLimitPerUser :: Int32
    , template :: String
    , themeColor :: Maybe Int32
    , topic :: Maybe String
    , type' :: ChannelTypes
    , userLimit :: Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildTemplateChannelResponse where
    parseJSON = withObject "GuildTemplateChannelResponse" $ \o ->
        GuildTemplateChannelResponse <$>
            o .: "available_tags"
            <*> o .: "bitrate"
            <*> o .: "default_auto_archive_duration"
            <*> o .: "default_forum_layout"
            <*> o .: "default_reaction_emoji"
            <*> o .: "default_sort_order"
            <*> o .: "default_tag_setting"
            <*> o .: "default_thread_rate_limit_per_user"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "nsfw"
            <*> o .: "parent_id"
            <*> o .: "permission_overwrites"
            <*> o .: "position"
            <*> o .: "rate_limit_per_user"
            <*> o .: "template"
            <*> o .: "theme_color"
            <*> o .: "topic"
            <*> o .: "type"
            <*> o .: "user_limit"