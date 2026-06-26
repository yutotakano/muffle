{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.LobbyMessageResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.MessageType

data LobbyMessageResponse = LobbyMessageResponse
    { applicationId :: Maybe SnowflakeType
    , author :: UserResponse
    , channelId :: SnowflakeType
    , content :: String
    , flags :: Int32
    , id :: SnowflakeType
    , lobbyId :: SnowflakeType
    , metadata :: Maybe LobbyMessageResponseMetadataNullableInner
    , moderationMetadata :: Maybe LobbyMessageResponseModerationMetadataNullableInner
    , type' :: MessageType
    }
    deriving (Show, Eq, Generic)
data LobbyMessageResponseMetadataNullableInner = LobbyMessageResponseMetadataNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data LobbyMessageResponseModerationMetadataNullableInner = LobbyMessageResponseModerationMetadataNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
