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
    , guildId :: Maybe SnowflakeType
    , id :: SnowflakeType
    , name :: String
    , sourceChannel :: WebhookSourceChannelResponse
    , sourceGuild :: WebhookSourceGuildResponse
    , type' :: WebhookTypes
    , user :: UserResponse
    }
    deriving (Show, Eq, Generic)
