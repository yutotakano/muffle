{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PurchaseNotificationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GuildProductPurchaseResponse
import Muffle.Discord.Generated.Schemas.PurchaseType

data PurchaseNotificationResponse = PurchaseNotificationResponse
    { guildProductPurchase :: GuildProductPurchaseResponse
    , type' :: PurchaseType
    }
    deriving (Show, Eq, Generic)
