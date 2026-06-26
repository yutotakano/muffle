{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildRoleTagsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data GuildRoleTagsResponse = GuildRoleTagsResponse
    { availableForPurchase :: Maybe ()
    , botId :: SnowflakeType
    , guildConnections :: Maybe ()
    , integrationId :: SnowflakeType
    , premiumSubscriber :: Maybe ()
    , subscriptionListingId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)
