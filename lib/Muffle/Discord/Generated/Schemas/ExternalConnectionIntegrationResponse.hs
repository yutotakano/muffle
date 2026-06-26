{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ExternalConnectionIntegrationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.AccountResponse
import Muffle.Discord.Generated.Schemas.IntegrationExpireBehaviorTypes
import Muffle.Discord.Generated.Schemas.IntegrationExpireGracePeriodTypes
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.IntegrationTypes
import Muffle.Discord.Generated.Schemas.UserResponse

data ExternalConnectionIntegrationResponse = ExternalConnectionIntegrationResponse
    { account :: AccountResponse
    , enableEmoticons :: Bool
    , enabled :: Bool
    , expireBehavior :: IntegrationExpireBehaviorTypes
    , expireGracePeriod :: IntegrationExpireGracePeriodTypes
    , id :: String
    , name :: Maybe String
    , revoked :: Bool
    , roleId :: Maybe SnowflakeType
    , subscriberCount :: Int32
    , syncedAt :: String
    , syncing :: Bool
    , type' :: IntegrationTypes
    , user :: UserResponse
    }
    deriving (Show, Eq, Generic)
