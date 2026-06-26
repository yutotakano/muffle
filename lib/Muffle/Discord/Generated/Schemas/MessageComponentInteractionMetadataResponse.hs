{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageComponentInteractionMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
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
data MessageComponentInteractionMetadataResponseAuthorizingIntegrationOwners = MessageComponentInteractionMetadataResponseAuthorizingIntegrationOwners
    { 
    }
    deriving (Show, Eq, Generic)
