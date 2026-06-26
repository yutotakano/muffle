{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ChannelFollowerWebhookResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
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
