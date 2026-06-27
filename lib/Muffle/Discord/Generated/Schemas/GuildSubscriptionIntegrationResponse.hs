{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildSubscriptionIntegrationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.AccountResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.IntegrationTypes

data GuildSubscriptionIntegrationResponse = GuildSubscriptionIntegrationResponse
    { account :: AccountResponse
    , enabled :: Bool
    , id :: SnowflakeType
    , name :: Maybe String
    , type' :: IntegrationTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildSubscriptionIntegrationResponse where
    parseJSON = withObject "GuildSubscriptionIntegrationResponse" $ \o ->
        GuildSubscriptionIntegrationResponse <$>
            o .: "account"
            <*> o .: "enabled"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "type"