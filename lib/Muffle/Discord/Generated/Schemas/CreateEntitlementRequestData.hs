{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.CreateEntitlementRequestData where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.EntitlementOwnerTypes

data CreateEntitlementRequestData = CreateEntitlementRequestData
    { ownerId :: SnowflakeType
    , ownerType :: EntitlementOwnerTypes
    , skuId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)

instance FromJSON CreateEntitlementRequestData where
    parseJSON = withObject "CreateEntitlementRequestData" $ \o ->
        CreateEntitlementRequestData <$>
            o .: "owner_id"
            <*> o .: "owner_type"
            <*> o .: "sku_id"