{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildProductPurchaseResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data GuildProductPurchaseResponse = GuildProductPurchaseResponse
    { listingId :: SnowflakeType
    , productName :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildProductPurchaseResponse where
    parseJSON = withObject "GuildProductPurchaseResponse" $ \o ->
        GuildProductPurchaseResponse <$>
            o .: "listing_id"
            <*> o .: "product_name"