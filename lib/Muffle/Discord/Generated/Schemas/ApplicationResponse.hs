{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ApplicationOAuth2InstallParamsResponse
import Muffle.Discord.Generated.Schemas.ApplicationTypes

data ApplicationResponse = ApplicationResponse
    { bot :: UserResponse
    , botPublic :: Bool
    , botRequireCodeGrant :: Bool
    , coverImage :: String
    , customInstallUrl :: String
    , description :: String
    , flags :: Int32
    , flagsNew :: String
    , guildId :: SnowflakeType
    , icon :: Maybe String
    , id :: SnowflakeType
    , installParams :: ApplicationOAuth2InstallParamsResponse
    , integrationTypesConfig :: ApplicationResponseIntegrationTypesConfig
    , maxParticipants :: Maybe Int32
    , name :: String
    , primarySkuId :: SnowflakeType
    , privacyPolicyUrl :: String
    , rpcOrigins :: [String]
    , slug :: String
    , tags :: [String]
    , termsOfServiceUrl :: String
    , type' :: Maybe ApplicationTypes
    , verifyKey :: String
    }
    deriving (Show, Eq, Generic)
data ApplicationResponseIntegrationTypesConfig = ApplicationResponseIntegrationTypesConfig
    { 
    }
    deriving (Show, Eq, Generic)
