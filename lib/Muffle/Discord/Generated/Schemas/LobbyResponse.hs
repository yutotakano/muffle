{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.LobbyResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UInt32Type
import Muffle.Discord.Generated.Schemas.GuildChannelResponse
import Muffle.Discord.Generated.Schemas.LobbyMemberResponse

data LobbyResponse = LobbyResponse
    { applicationId :: SnowflakeType
    , flags :: UInt32Type
    , id :: SnowflakeType
    , linkedChannel :: Maybe GuildChannelResponse
    , members :: [LobbyMemberResponse]
    , metadata :: Maybe LobbyResponseMetadataNullableInner
    , overrideEventWebhooksUrl :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON LobbyResponse where
    parseJSON = withObject "LobbyResponse" $ \o ->
        LobbyResponse <$>
            o .: "application_id"
            <*> o .: "flags"
            <*> o .: "id"
            <*> o .: "linked_channel"
            <*> o .: "members"
            <*> o .: "metadata"
            <*> o .: "override_event_webhooks_url"

data LobbyResponseMetadataNullableInner = LobbyResponseMetadataNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON LobbyResponseMetadataNullableInner where
    parseJSON = withObject "LobbyResponseMetadataNullableInner" $ \_ -> pure LobbyResponseMetadataNullableInner