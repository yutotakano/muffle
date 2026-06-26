{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildRoleTagsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
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
