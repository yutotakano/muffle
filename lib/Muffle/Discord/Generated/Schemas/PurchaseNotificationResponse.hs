{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PurchaseNotificationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.GuildProductPurchaseResponse
import Muffle.Discord.Generated.Schemas.PurchaseType

data PurchaseNotificationResponse = PurchaseNotificationResponse
    { guildProductPurchase :: Maybe GuildProductPurchaseResponse
    , type' :: PurchaseType
    }
    deriving (Show, Eq, Generic)

instance FromJSON PurchaseNotificationResponse where
    parseJSON = withObject "PurchaseNotificationResponse" $ \o ->
        PurchaseNotificationResponse <$>
            o .: "guild_product_purchase"
            <*> o .: "type"