{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.EntitlementResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.EntitlementTenantFulfillmentStatusResponse
import Muffle.Discord.Generated.Schemas.EntitlementTypes

data EntitlementResponse = EntitlementResponse
    { applicationId :: SnowflakeType
    , consumed :: Maybe Bool
    , deleted :: Bool
    , endsAt :: Maybe String
    , fulfilledAt :: Maybe (Maybe String)
    , fulfillmentStatus :: Maybe (Maybe EntitlementTenantFulfillmentStatusResponse)
    , gifterUserId :: Maybe (Maybe SnowflakeType)
    , guildId :: Maybe (Maybe SnowflakeType)
    , id :: SnowflakeType
    , parentId :: Maybe (Maybe SnowflakeType)
    , skuId :: SnowflakeType
    , startsAt :: Maybe String
    , type' :: EntitlementTypes
    , userId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)

instance FromJSON EntitlementResponse where
    parseJSON = withObject "EntitlementResponse" $ \o ->
        EntitlementResponse <$>
            o .: "application_id"
            <*> o .: "consumed"
            <*> o .: "deleted"
            <*> o .: "ends_at"
            <*> o .: "fulfilled_at"
            <*> o .: "fulfillment_status"
            <*> o .: "gifter_user_id"
            <*> o .: "guild_id"
            <*> o .: "id"
            <*> o .: "parent_id"
            <*> o .: "sku_id"
            <*> o .: "starts_at"
            <*> o .: "type"
            <*> o .: "user_id"