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
    { bot :: Maybe UserResponse
    , botPublic :: Maybe Bool
    , botRequireCodeGrant :: Maybe Bool
    , coverImage :: Maybe String
    , customInstallUrl :: Maybe String
    , description :: String
    , flags :: Int32
    , flagsNew :: String
    , guildId :: Maybe SnowflakeType
    , icon :: Maybe String
    , id :: SnowflakeType
    , installParams :: Maybe ApplicationOAuth2InstallParamsResponse
    , integrationTypesConfig :: Maybe ApplicationResponseIntegrationTypesConfigNullableInner
    , maxParticipants :: Maybe (Maybe Int32)
    , name :: String
    , primarySkuId :: Maybe SnowflakeType
    , privacyPolicyUrl :: Maybe String
    , rpcOrigins :: Maybe [String]
    , slug :: Maybe String
    , tags :: Maybe [String]
    , termsOfServiceUrl :: Maybe String
    , type' :: Maybe ApplicationTypes
    , verifyKey :: String
    }
    deriving (Show, Eq, Generic)
data ApplicationResponseIntegrationTypesConfigNullableInner = ApplicationResponseIntegrationTypesConfigNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
