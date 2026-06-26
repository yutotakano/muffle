{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PartialGuildSubscriptionIntegrationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.AccountResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.IntegrationTypes

data PartialGuildSubscriptionIntegrationResponse = PartialGuildSubscriptionIntegrationResponse
    { account :: AccountResponse
    , id :: SnowflakeType
    , name :: Maybe String
    , type' :: IntegrationTypes
    }
    deriving (Show, Eq, Generic)
