{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageComponentInteractionMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.InteractionTypes
import Muffle.Discord.Generated.Schemas.UserResponse

data MessageComponentInteractionMetadataResponse = MessageComponentInteractionMetadataResponse
    { authorizingIntegrationOwners :: MessageComponentInteractionMetadataResponseAuthorizingIntegrationOwners
    , id :: SnowflakeType
    , interactedMessageId :: SnowflakeType
    , originalResponseMessageId :: Maybe SnowflakeType
    , type' :: InteractionTypes
    , user :: Maybe UserResponse
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageComponentInteractionMetadataResponse where
    parseJSON = withObject "MessageComponentInteractionMetadataResponse" $ \o ->
        MessageComponentInteractionMetadataResponse <$>
            o .: "authorizing_integration_owners"
            <*> o .: "id"
            <*> o .: "interacted_message_id"
            <*> o .: "original_response_message_id"
            <*> o .: "type"
            <*> o .: "user"

data MessageComponentInteractionMetadataResponseAuthorizingIntegrationOwners = MessageComponentInteractionMetadataResponseAuthorizingIntegrationOwners
    deriving (Show, Eq, Generic)

instance FromJSON MessageComponentInteractionMetadataResponseAuthorizingIntegrationOwners where
    parseJSON = withObject "MessageComponentInteractionMetadataResponseAuthorizingIntegrationOwners" $ \_ -> pure MessageComponentInteractionMetadataResponseAuthorizingIntegrationOwners