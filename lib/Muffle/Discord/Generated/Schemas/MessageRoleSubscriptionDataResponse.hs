{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageRoleSubscriptionDataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data MessageRoleSubscriptionDataResponse = MessageRoleSubscriptionDataResponse
    { isRenewal :: Bool
    , roleSubscriptionListingId :: SnowflakeType
    , tierName :: String
    , totalMonthsSubscribed :: Int32
    }
    deriving (Show, Eq, Generic)
