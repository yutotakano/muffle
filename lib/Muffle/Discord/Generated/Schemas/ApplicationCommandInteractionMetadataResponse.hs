{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandInteractionMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.InteractionTypes

data ApplicationCommandInteractionMetadataResponse = ApplicationCommandInteractionMetadataResponse
    { authorizingIntegrationOwners :: ApplicationCommandInteractionMetadataResponseAuthorizingIntegrationOwners
    , id :: SnowflakeType
    , originalResponseMessageId :: SnowflakeType
    , targetMessageId :: SnowflakeType
    , targetUser :: UserResponse
    , type' :: InteractionTypes
    , user :: UserResponse
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandInteractionMetadataResponseAuthorizingIntegrationOwners = ApplicationCommandInteractionMetadataResponseAuthorizingIntegrationOwners
    { 
    }
    deriving (Show, Eq, Generic)
