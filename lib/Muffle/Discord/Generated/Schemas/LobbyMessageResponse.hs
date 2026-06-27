{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.LobbyMessageResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
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

instance FromJSON LobbyMessageResponse where
    parseJSON = withObject "LobbyMessageResponse" $ \o ->
        LobbyMessageResponse <$>
            o .: "application_id"
            <*> o .: "author"
            <*> o .: "channel_id"
            <*> o .: "content"
            <*> o .: "flags"
            <*> o .: "id"
            <*> o .: "lobby_id"
            <*> o .: "metadata"
            <*> o .: "moderation_metadata"
            <*> o .: "type"

data LobbyMessageResponseMetadataNullableInner = LobbyMessageResponseMetadataNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON LobbyMessageResponseMetadataNullableInner where
    parseJSON = withObject "LobbyMessageResponseMetadataNullableInner" $ \_ -> pure LobbyMessageResponseMetadataNullableInner

data LobbyMessageResponseModerationMetadataNullableInner = LobbyMessageResponseModerationMetadataNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON LobbyMessageResponseModerationMetadataNullableInner where
    parseJSON = withObject "LobbyMessageResponseModerationMetadataNullableInner" $ \_ -> pure LobbyMessageResponseModerationMetadataNullableInner