{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildTemplateChannelResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
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
