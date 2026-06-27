{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SubscriptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.SubscriptionResponseStatusType

data SubscriptionResponse = SubscriptionResponse
    { canceledAt :: Maybe String
    , country :: Maybe (Maybe String)
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

instance FromJSON SubscriptionResponse where
    parseJSON = withObject "SubscriptionResponse" $ \o ->
        SubscriptionResponse <$>
            o .: "canceled_at"
            <*> o .: "country"
            <*> o .: "current_period_end"
            <*> o .: "current_period_start"
            <*> o .: "entitlement_ids"
            <*> o .: "id"
            <*> o .: "renewal_sku_ids"
            <*> o .: "sku_ids"
            <*> o .: "status"
            <*> o .: "user_id"