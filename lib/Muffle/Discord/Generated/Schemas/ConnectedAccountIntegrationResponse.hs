{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ConnectedAccountIntegrationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.AccountResponse
import Muffle.Discord.Generated.Schemas.ConnectedAccountGuildResponse
import Muffle.Discord.Generated.Schemas.IntegrationTypes

data ConnectedAccountIntegrationResponse = ConnectedAccountIntegrationResponse
    { account :: AccountResponse
    , guild :: ConnectedAccountGuildResponse
    , id :: String
    , type' :: IntegrationTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON ConnectedAccountIntegrationResponse where
    parseJSON = withObject "ConnectedAccountIntegrationResponse" $ \o ->
        ConnectedAccountIntegrationResponse <$>
            o .: "account"
            <*> o .: "guild"
            <*> o .: "id"
            <*> o .: "type"