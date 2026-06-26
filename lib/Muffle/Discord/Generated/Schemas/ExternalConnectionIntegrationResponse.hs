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
    , enableEmoticons :: Maybe Bool
    , enabled :: Bool
    , expireBehavior :: Maybe IntegrationExpireBehaviorTypes
    , expireGracePeriod :: Maybe IntegrationExpireGracePeriodTypes
    , id :: String
    , name :: Maybe String
    , revoked :: Maybe Bool
    , roleId :: Maybe (Maybe SnowflakeType)
    , subscriberCount :: Maybe Int32
    , syncedAt :: Maybe String
    , syncing :: Maybe Bool
    , type' :: IntegrationTypes
    , user :: UserResponse
    }
    deriving (Show, Eq, Generic)
