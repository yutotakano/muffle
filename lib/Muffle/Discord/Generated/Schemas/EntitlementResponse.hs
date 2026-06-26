{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.EntitlementResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.EntitlementTenantFulfillmentStatusResponse
import Muffle.Discord.Generated.Schemas.EntitlementTypes

data EntitlementResponse = EntitlementResponse
    { applicationId :: SnowflakeType
    , consumed :: Bool
    , deleted :: Bool
    , endsAt :: Maybe String
    , fulfilledAt :: Maybe String
    , fulfillmentStatus :: Maybe EntitlementTenantFulfillmentStatusResponse
    , gifterUserId :: Maybe SnowflakeType
    , guildId :: Maybe SnowflakeType
    , id :: SnowflakeType
    , parentId :: Maybe SnowflakeType
    , skuId :: SnowflakeType
    , startsAt :: Maybe String
    , type' :: EntitlementTypes
    , userId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)
