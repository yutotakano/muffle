{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GatewayResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data GatewayResponse = GatewayResponse
    { url :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON GatewayResponse where
    parseJSON = withObject "GatewayResponse" $ \o ->
        GatewayResponse <$>
            o .: "url"