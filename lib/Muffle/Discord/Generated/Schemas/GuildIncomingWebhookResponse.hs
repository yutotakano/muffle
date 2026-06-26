{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildIncomingWebhookResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
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
