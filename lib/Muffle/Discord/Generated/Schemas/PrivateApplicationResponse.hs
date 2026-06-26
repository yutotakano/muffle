{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PrivateApplicationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.ApplicationEventWebhooksStatus
import Muffle.Discord.Generated.Schemas.ActionTypes
import Muffle.Discord.Generated.Schemas.ApplicationExplicitContentFilterTypes
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ApplicationOAuth2InstallParamsResponse
import Muffle.Discord.Generated.Schemas.TeamResponse
import Muffle.Discord.Generated.Schemas.ApplicationTypes

data PrivateApplicationResponse = PrivateApplicationResponse
    { approximateGuildCount :: Int32
    , approximateUserAuthorizationCount :: Int32
    , approximateUserInstallCount :: Int32
    , bot :: UserResponse
    , botPublic :: Bool
    , botRequireCodeGrant :: Bool
    , coverImage :: String
    , customInstallUrl :: String
    , description :: String
    , eventWebhooksStatus :: ApplicationEventWebhooksStatus
    , eventWebhooksTypes :: [ActionTypes]
    , eventWebhooksUrl :: Maybe String
    , explicitContentFilter :: ApplicationExplicitContentFilterTypes
    , flags :: Int32
    , flagsNew :: String
    , guildId :: SnowflakeType
    , icon :: Maybe String
    , id :: SnowflakeType
    , installParams :: ApplicationOAuth2InstallParamsResponse
    , integrationTypesConfig :: PrivateApplicationResponseIntegrationTypesConfig
    , interactionsEndpointUrl :: Maybe String
    , maxParticipants :: Maybe Int32
    , name :: String
    , owner :: UserResponse
    , primarySkuId :: SnowflakeType
    , privacyPolicyUrl :: String
    , redirectUris :: [String]
    , roleConnectionsVerificationUrl :: Maybe String
    , rpcOrigins :: [String]
    , slug :: String
    , tags :: [String]
    , team :: Maybe TeamResponse
    , termsOfServiceUrl :: String
    , type' :: Maybe ApplicationTypes
    , verifyKey :: String
    }
    deriving (Show, Eq, Generic)
data PrivateApplicationResponseIntegrationTypesConfig = PrivateApplicationResponseIntegrationTypesConfig
    { 
    }
    deriving (Show, Eq, Generic)
