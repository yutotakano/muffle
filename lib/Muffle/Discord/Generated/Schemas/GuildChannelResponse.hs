{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildChannelResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
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
    { availableTags :: [ForumTagResponse]
    , bitrate :: Int32
    , defaultAutoArchiveDuration :: ThreadAutoArchiveDuration
    , defaultForumLayout :: ForumLayout
    , defaultReactionEmoji :: Maybe DefaultReactionEmojiResponse
    , defaultSortOrder :: Maybe ThreadSortOrder
    , defaultTagSetting :: Maybe ThreadSearchTagSetting
    , defaultThreadRateLimitPerUser :: Int32
    , flags :: Int32
    , guildId :: SnowflakeType
    , id :: SnowflakeType
    , lastMessageId :: Maybe SnowflakeType
    , lastPinTimestamp :: Maybe String
    , name :: String
    , nsfw :: Bool
    , parentId :: Maybe SnowflakeType
    , permissionOverwrites :: [ChannelPermissionOverwriteResponse]
    , permissions :: String
    , position :: Int32
    , rateLimitPerUser :: Int32
    , rtcRegion :: Maybe String
    , topic :: Maybe String
    , type' :: ChannelTypes
    , userLimit :: Int32
    , videoQualityMode :: VideoQualityModes
    }
    deriving (Show, Eq, Generic)
