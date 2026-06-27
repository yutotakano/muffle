{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.EntitlementTenantFulfillmentStatusResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype EntitlementTenantFulfillmentStatusResponse = EntitlementTenantFulfillmentStatusResponse Int32
    deriving (Show, Eq, Generic)

instance FromJSON EntitlementTenantFulfillmentStatusResponse where
    parseJSON v = EntitlementTenantFulfillmentStatusResponse <$> parseJSON v