{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandInteractionMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.InteractionTypes

data ApplicationCommandInteractionMetadataResponse = ApplicationCommandInteractionMetadataResponse
    { authorizingIntegrationOwners :: ApplicationCommandInteractionMetadataResponseAuthorizingIntegrationOwners
    , id :: SnowflakeType
    , originalResponseMessageId :: Maybe SnowflakeType
    , targetMessageId :: Maybe SnowflakeType
    , targetUser :: Maybe UserResponse
    , type' :: InteractionTypes
    , user :: Maybe UserResponse
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandInteractionMetadataResponse where
    parseJSON = withObject "ApplicationCommandInteractionMetadataResponse" $ \o ->
        ApplicationCommandInteractionMetadataResponse <$>
            o .: "authorizing_integration_owners"
            <*> o .: "id"
            <*> o .: "original_response_message_id"
            <*> o .: "target_message_id"
            <*> o .: "target_user"
            <*> o .: "type"
            <*> o .: "user"

data ApplicationCommandInteractionMetadataResponseAuthorizingIntegrationOwners = ApplicationCommandInteractionMetadataResponseAuthorizingIntegrationOwners
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandInteractionMetadataResponseAuthorizingIntegrationOwners where
    parseJSON = withObject "ApplicationCommandInteractionMetadataResponseAuthorizingIntegrationOwners" $ \_ -> pure ApplicationCommandInteractionMetadataResponseAuthorizingIntegrationOwners