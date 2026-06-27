{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UserAvatarDecorationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data UserAvatarDecorationResponse = UserAvatarDecorationResponse
    { asset :: String
    , skuId :: Maybe SnowflakeType
    }
    deriving (Show, Eq, Generic)

instance FromJSON UserAvatarDecorationResponse where
    parseJSON = withObject "UserAvatarDecorationResponse" $ \o ->
        UserAvatarDecorationResponse <$>
            o .: "asset"
            <*> o .: "sku_id"