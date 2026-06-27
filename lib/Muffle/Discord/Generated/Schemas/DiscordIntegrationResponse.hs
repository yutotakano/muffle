{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.DiscordIntegrationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.AccountResponse
import Muffle.Discord.Generated.Schemas.IntegrationApplicationResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.OAuth2Scopes
import Muffle.Discord.Generated.Schemas.IntegrationTypes
import Muffle.Discord.Generated.Schemas.UserResponse

data DiscordIntegrationResponse = DiscordIntegrationResponse
    { account :: AccountResponse
    , application :: IntegrationApplicationResponse
    , enabled :: Bool
    , id :: SnowflakeType
    , name :: Maybe String
    , scopes :: [OAuth2Scopes]
    , type' :: IntegrationTypes
    , user :: Maybe UserResponse
    }
    deriving (Show, Eq, Generic)

instance FromJSON DiscordIntegrationResponse where
    parseJSON = withObject "DiscordIntegrationResponse" $ \o ->
        DiscordIntegrationResponse <$>
            o .: "account"
            <*> o .: "application"
            <*> o .: "enabled"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "scopes"
            <*> o .: "type"
            <*> o .: "user"