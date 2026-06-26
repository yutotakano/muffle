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
    { availableTags :: Maybe ([Maybe CreateOrUpdateThreadTagRequest])
    , bitrate :: Maybe (Maybe Int32)
    , defaultAutoArchiveDuration :: Maybe (Maybe ThreadAutoArchiveDuration)
    , defaultForumLayout :: Maybe (Maybe ForumLayout)
    , defaultReactionEmoji :: Maybe (Maybe UpdateDefaultReactionEmojiRequest)
    , defaultSortOrder :: Maybe (Maybe ThreadSortOrder)
    , defaultTagSetting :: Maybe (Maybe ThreadSearchTagSetting)
    , defaultThreadRateLimitPerUser :: Maybe (Maybe Integer)
    , name :: String
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
