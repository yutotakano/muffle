{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildProductPurchaseResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data GuildProductPurchaseResponse = GuildProductPurchaseResponse
    { listingId :: SnowflakeType
    , productName :: String
    }
    deriving (Show, Eq, Generic)
