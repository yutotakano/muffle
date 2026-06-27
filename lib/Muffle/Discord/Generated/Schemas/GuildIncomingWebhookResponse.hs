{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildIncomingWebhookResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.WebhookTypes
import Muffle.Discord.Generated.Schemas.UserResponse

data GuildIncomingWebhookResponse = GuildIncomingWebhookResponse
    { applicationId :: Maybe SnowflakeType
    , avatar :: Maybe String
    , channelId :: Maybe SnowflakeType
    , guildId :: Maybe (Maybe SnowflakeType)
    , id :: SnowflakeType
    , name :: String
    , token :: Maybe String
    , type' :: WebhookTypes
    , url :: Maybe String
    , user :: Maybe UserResponse
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildIncomingWebhookResponse where
    parseJSON = withObject "GuildIncomingWebhookResponse" $ \o ->
        GuildIncomingWebhookResponse <$>
            o .: "application_id"
            <*> o .: "avatar"
            <*> o .: "channel_id"
            <*> o .: "guild_id"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "token"
            <*> o .: "type"
            <*> o .: "url"
            <*> o .: "user"