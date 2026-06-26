{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.SubscriptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.SubscriptionResponseStatusType

data SubscriptionResponse = SubscriptionResponse
    { canceledAt :: Maybe String
    , country :: Maybe String
    , currentPeriodEnd :: String
    , currentPeriodStart :: String
    , entitlementIds :: [SnowflakeType]
    , id :: SnowflakeType
    , renewalSkuIds :: [SnowflakeType]
    , skuIds :: [SnowflakeType]
    , status :: SubscriptionResponseStatusType
    , userId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)
