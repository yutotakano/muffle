{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CreateGuildChannelRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.CreateOrUpdateThreadTagRequest
import Muffle.Discord.Generated.Schemas.ThreadAutoArchiveDuration
import Muffle.Discord.Generated.Schemas.ForumLayout
import Muffle.Discord.Generated.Schemas.UpdateDefaultReactionEmojiRequest
import Muffle.Discord.Generated.Schemas.ThreadSortOrder
import Muffle.Discord.Generated.Schemas.ThreadSearchTagSetting
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ChannelPermissionOverwriteRequest
import Muffle.Discord.Generated.Schemas.ChannelTypes
import Muffle.Discord.Generated.Schemas.VideoQualityModes

data CreateGuildChannelRequest = CreateGuildChannelRequest
    { availableTags :: [Maybe CreateOrUpdateThreadTagRequest]
    , bitrate :: Maybe Int32
    , defaultAutoArchiveDuration :: Maybe ThreadAutoArchiveDuration
    , defaultForumLayout :: Maybe ForumLayout
    , defaultReactionEmoji :: Maybe UpdateDefaultReactionEmojiRequest
    , defaultSortOrder :: Maybe ThreadSortOrder
    , defaultTagSetting :: Maybe ThreadSearchTagSetting
    , defaultThreadRateLimitPerUser :: Maybe Integer
    , name :: String
    , nsfw :: Maybe Bool
    , parentId :: Maybe SnowflakeType
    , permissionOverwrites :: [ChannelPermissionOverwriteRequest]
    , position :: Maybe Int32
    , rateLimitPerUser :: Maybe Integer
    , rtcRegion :: Maybe String
    , topic :: Maybe String
    , type' :: Maybe ChannelTypes
    , userLimit :: Maybe Int32
    , videoQualityMode :: Maybe VideoQualityModes
    }
    deriving (Show, Eq, Generic)
