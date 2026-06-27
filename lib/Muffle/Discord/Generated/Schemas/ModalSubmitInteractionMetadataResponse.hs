{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ModalSubmitInteractionMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.InteractionTypes
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandInteractionMetadataResponse
import Muffle.Discord.Generated.Schemas.MessageComponentInteractionMetadataResponse

data ModalSubmitInteractionMetadataResponse = ModalSubmitInteractionMetadataResponse
    { authorizingIntegrationOwners :: ModalSubmitInteractionMetadataResponseAuthorizingIntegrationOwners
    , id :: SnowflakeType
    , originalResponseMessageId :: Maybe SnowflakeType
    , triggeringInteractionMetadata :: ModalSubmitInteractionMetadataResponseTriggeringInteractionMetadata
    , type' :: InteractionTypes
    , user :: Maybe UserResponse
    }
    deriving (Show, Eq, Generic)

instance FromJSON ModalSubmitInteractionMetadataResponse where
    parseJSON = withObject "ModalSubmitInteractionMetadataResponse" $ \o ->
        ModalSubmitInteractionMetadataResponse <$>
            o .: "authorizing_integration_owners"
            <*> o .: "id"
            <*> o .: "original_response_message_id"
            <*> o .: "triggering_interaction_metadata"
            <*> o .: "type"
            <*> o .: "user"

data ModalSubmitInteractionMetadataResponseAuthorizingIntegrationOwners = ModalSubmitInteractionMetadataResponseAuthorizingIntegrationOwners
    deriving (Show, Eq, Generic)

instance FromJSON ModalSubmitInteractionMetadataResponseAuthorizingIntegrationOwners where
    parseJSON = withObject "ModalSubmitInteractionMetadataResponseAuthorizingIntegrationOwners" $ \_ -> pure ModalSubmitInteractionMetadataResponseAuthorizingIntegrationOwners

data ModalSubmitInteractionMetadataResponseTriggeringInteractionMetadata = ModalSubmitInteractionMetadataResponseTriggeringInteractionMetadata0 ApplicationCommandInteractionMetadataResponse | ModalSubmitInteractionMetadataResponseTriggeringInteractionMetadata1 MessageComponentInteractionMetadataResponse
    deriving (Show, Eq, Generic)

instance FromJSON ModalSubmitInteractionMetadataResponseTriggeringInteractionMetadata where
    parseJSON v =
        ModalSubmitInteractionMetadataResponseTriggeringInteractionMetadata0 <$> parseJSON v
            <|> ModalSubmitInteractionMetadataResponseTriggeringInteractionMetadata1 <$> parseJSON v