{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageRoleSubscriptionDataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data MessageRoleSubscriptionDataResponse = MessageRoleSubscriptionDataResponse
    { isRenewal :: Bool
    , roleSubscriptionListingId :: SnowflakeType
    , tierName :: String
    , totalMonthsSubscribed :: Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageRoleSubscriptionDataResponse where
    parseJSON = withObject "MessageRoleSubscriptionDataResponse" $ \o ->
        MessageRoleSubscriptionDataResponse <$>
            o .: "is_renewal"
            <*> o .: "role_subscription_listing_id"
            <*> o .: "tier_name"
            <*> o .: "total_months_subscribed"