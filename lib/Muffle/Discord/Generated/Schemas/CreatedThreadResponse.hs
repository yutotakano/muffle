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
