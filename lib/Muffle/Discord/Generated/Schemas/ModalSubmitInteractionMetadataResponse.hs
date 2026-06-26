{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ModalSubmitInteractionMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.InteractionTypes
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandInteractionMetadataResponse
import Muffle.Discord.Generated.Schemas.MessageComponentInteractionMetadataResponse

data ModalSubmitInteractionMetadataResponse = ModalSubmitInteractionMetadataResponse
    { authorizingIntegrationOwners :: ModalSubmitInteractionMetadataResponseAuthorizingIntegrationOwners
    , id :: SnowflakeType
    , originalResponseMessageId :: SnowflakeType
    , triggeringInteractionMetadata :: ModalSubmitInteractionMetadataResponseTriggeringInteractionMetadata
    , type' :: InteractionTypes
    , user :: UserResponse
    }
    deriving (Show, Eq, Generic)
data ModalSubmitInteractionMetadataResponseAuthorizingIntegrationOwners = ModalSubmitInteractionMetadataResponseAuthorizingIntegrationOwners
    { 
    }
    deriving (Show, Eq, Generic)
data ModalSubmitInteractionMetadataResponseTriggeringInteractionMetadata = ModalSubmitInteractionMetadataResponseTriggeringInteractionMetadata0 ApplicationCommandInteractionMetadataResponse | ModalSubmitInteractionMetadataResponseTriggeringInteractionMetadata1 MessageComponentInteractionMetadataResponse
    deriving (Show, Eq, Generic)
