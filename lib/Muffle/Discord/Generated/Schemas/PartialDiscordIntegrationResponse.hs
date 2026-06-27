{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PartialDiscordIntegrationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.AccountResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.IntegrationTypes

data PartialDiscordIntegrationResponse = PartialDiscordIntegrationResponse
    { account :: AccountResponse
    , applicationId :: SnowflakeType
    , id :: SnowflakeType
    , name :: Maybe String
    , type' :: IntegrationTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON PartialDiscordIntegrationResponse where
    parseJSON = withObject "PartialDiscordIntegrationResponse" $ \o ->
        PartialDiscordIntegrationResponse <$>
            o .: "account"
            <*> o .: "application_id"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "type"