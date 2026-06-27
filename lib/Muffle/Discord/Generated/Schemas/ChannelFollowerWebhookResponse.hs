{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ChannelFollowerWebhookResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.WebhookSourceChannelResponse
import Muffle.Discord.Generated.Schemas.WebhookSourceGuildResponse
import Muffle.Discord.Generated.Schemas.WebhookTypes
import Muffle.Discord.Generated.Schemas.UserResponse

data ChannelFollowerWebhookResponse = ChannelFollowerWebhookResponse
    { applicationId :: Maybe SnowflakeType
    , avatar :: Maybe String
    , channelId :: Maybe SnowflakeType
    , guildId :: Maybe (Maybe SnowflakeType)
    , id :: SnowflakeType
    , name :: String
    , sourceChannel :: Maybe WebhookSourceChannelResponse
    , sourceGuild :: Maybe WebhookSourceGuildResponse
    , type' :: WebhookTypes
    , user :: Maybe UserResponse
    }
    deriving (Show, Eq, Generic)

instance FromJSON ChannelFollowerWebhookResponse where
    parseJSON = withObject "ChannelFollowerWebhookResponse" $ \o ->
        ChannelFollowerWebhookResponse <$>
            o .: "application_id"
            <*> o .: "avatar"
            <*> o .: "channel_id"
            <*> o .: "guild_id"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "source_channel"
            <*> o .: "source_guild"
            <*> o .: "type"
            <*> o .: "user"