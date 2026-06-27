{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PartialGuildSubscriptionIntegrationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
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

instance FromJSON PartialGuildSubscriptionIntegrationResponse where
    parseJSON = withObject "PartialGuildSubscriptionIntegrationResponse" $ \o ->
        PartialGuildSubscriptionIntegrationResponse <$>
            o .: "account"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "type"