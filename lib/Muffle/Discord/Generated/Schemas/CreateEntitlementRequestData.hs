{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CreateEntitlementRequestData where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.EntitlementOwnerTypes

data CreateEntitlementRequestData = CreateEntitlementRequestData
    { ownerId :: SnowflakeType
    , ownerType :: EntitlementOwnerTypes
    , skuId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)
