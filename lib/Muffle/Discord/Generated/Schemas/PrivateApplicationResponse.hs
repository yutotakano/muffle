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
    , bot :: Maybe UserResponse
    , botPublic :: Maybe Bool
    , botRequireCodeGrant :: Maybe Bool
    , coverImage :: Maybe String
    , customInstallUrl :: Maybe String
    , description :: String
    , eventWebhooksStatus :: Maybe ApplicationEventWebhooksStatus
    , eventWebhooksTypes :: Maybe [ActionTypes]
    , eventWebhooksUrl :: Maybe (Maybe String)
    , explicitContentFilter :: ApplicationExplicitContentFilterTypes
    , flags :: Int32
    , flagsNew :: String
    , guildId :: Maybe SnowflakeType
    , icon :: Maybe String
    , id :: SnowflakeType
    , installParams :: Maybe ApplicationOAuth2InstallParamsResponse
    , integrationTypesConfig :: Maybe PrivateApplicationResponseIntegrationTypesConfigNullableInner
    , interactionsEndpointUrl :: Maybe String
    , maxParticipants :: Maybe (Maybe Int32)
    , name :: String
    , owner :: UserResponse
    , primarySkuId :: Maybe SnowflakeType
    , privacyPolicyUrl :: Maybe String
    , redirectUris :: [String]
    , roleConnectionsVerificationUrl :: Maybe String
    , rpcOrigins :: Maybe [String]
    , slug :: Maybe String
    , tags :: Maybe [String]
    , team :: Maybe TeamResponse
    , termsOfServiceUrl :: Maybe String
    , type' :: Maybe ApplicationTypes
    , verifyKey :: String
    }
    deriving (Show, Eq, Generic)
data PrivateApplicationResponseIntegrationTypesConfigNullableInner = PrivateApplicationResponseIntegrationTypesConfigNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
