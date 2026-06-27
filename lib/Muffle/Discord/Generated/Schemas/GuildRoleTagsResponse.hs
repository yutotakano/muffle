{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildRoleTagsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data GuildRoleTagsResponse = GuildRoleTagsResponse
    { availableForPurchase :: Maybe ()
    , botId :: Maybe SnowflakeType
    , guildConnections :: Maybe ()
    , integrationId :: Maybe SnowflakeType
    , premiumSubscriber :: Maybe ()
    , subscriptionListingId :: Maybe SnowflakeType
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildRoleTagsResponse where
    parseJSON = withObject "GuildRoleTagsResponse" $ \o ->
        GuildRoleTagsResponse <$>
            o .:! "available_for_purchase"
            <*> o .: "bot_id"
            <*> o .:! "guild_connections"
            <*> o .: "integration_id"
            <*> o .:! "premium_subscriber"
            <*> o .: "subscription_listing_id"