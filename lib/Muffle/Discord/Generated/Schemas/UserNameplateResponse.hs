{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UserNameplateResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.NameplatePalette
import Muffle.Discord.Generated.Schemas.SnowflakeType

data UserNameplateResponse = UserNameplateResponse
    { asset :: String
    , label :: String
    , palette :: NameplatePalette
    , skuId :: Maybe SnowflakeType
    }
    deriving (Show, Eq, Generic)

instance FromJSON UserNameplateResponse where
    parseJSON = withObject "UserNameplateResponse" $ \o ->
        UserNameplateResponse <$>
            o .: "asset"
            <*> o .: "label"
            <*> o .: "palette"
            <*> o .: "sku_id"