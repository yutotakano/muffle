{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CreatedThreadResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ThreadMemberResponse
import Muffle.Discord.Generated.Schemas.ThreadMetadataResponse
import Muffle.Discord.Generated.Schemas.ChannelTypes
import Muffle.Discord.Generated.Schemas.VideoQualityModes

data CreatedThreadResponse = CreatedThreadResponse
    { appliedTags :: [SnowflakeType]
    , bitrate :: Int32
    , flags :: Int32
    , guildId :: SnowflakeType
    , id :: SnowflakeType
    , lastMessageId :: Maybe SnowflakeType
    , lastPinTimestamp :: Maybe String
    , member :: ThreadMemberResponse
    , memberCount :: Int32
    , messageCount :: Int32
    , name :: String
    , ownerId :: SnowflakeType
    , parentId :: Maybe SnowflakeType
    , permissions :: String
    , rateLimitPerUser :: Int32
    , rtcRegion :: Maybe String
    , threadMetadata :: ThreadMetadataResponse
    , totalMessageSent :: Int32
    , type' :: ChannelTypes
    , userLimit :: Int32
    , videoQualityMode :: VideoQualityModes
    }
    deriving (Show, Eq, Generic)
