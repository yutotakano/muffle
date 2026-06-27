{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PartialExternalConnectionIntegrationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.AccountResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.IntegrationTypes

data PartialExternalConnectionIntegrationResponse = PartialExternalConnectionIntegrationResponse
    { account :: AccountResponse
    , id :: SnowflakeType
    , name :: Maybe String
    , type' :: IntegrationTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON PartialExternalConnectionIntegrationResponse where
    parseJSON = withObject "PartialExternalConnectionIntegrationResponse" $ \o ->
        PartialExternalConnectionIntegrationResponse <$>
            o .: "account"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "type"