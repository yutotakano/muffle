{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PrivateApplicationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
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

instance FromJSON PrivateApplicationResponse where
    parseJSON = withObject "PrivateApplicationResponse" $ \o ->
        PrivateApplicationResponse <$>
            o .: "approximate_guild_count"
            <*> o .: "approximate_user_authorization_count"
            <*> o .: "approximate_user_install_count"
            <*> o .: "bot"
            <*> o .: "bot_public"
            <*> o .: "bot_require_code_grant"
            <*> o .: "cover_image"
            <*> o .: "custom_install_url"
            <*> o .: "description"
            <*> o .: "event_webhooks_status"
            <*> o .: "event_webhooks_types"
            <*> o .: "event_webhooks_url"
            <*> o .: "explicit_content_filter"
            <*> o .: "flags"
            <*> o .: "flags_new"
            <*> o .: "guild_id"
            <*> o .: "icon"
            <*> o .: "id"
            <*> o .: "install_params"
            <*> o .: "integration_types_config"
            <*> o .: "interactions_endpoint_url"
            <*> o .: "max_participants"
            <*> o .: "name"
            <*> o .: "owner"
            <*> o .: "primary_sku_id"
            <*> o .: "privacy_policy_url"
            <*> o .: "redirect_uris"
            <*> o .: "role_connections_verification_url"
            <*> o .: "rpc_origins"
            <*> o .: "slug"
            <*> o .: "tags"
            <*> o .: "team"
            <*> o .: "terms_of_service_url"
            <*> o .: "type"
            <*> o .: "verify_key"

data PrivateApplicationResponseIntegrationTypesConfigNullableInner = PrivateApplicationResponseIntegrationTypesConfigNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON PrivateApplicationResponseIntegrationTypesConfigNullableInner where
    parseJSON = withObject "PrivateApplicationResponseIntegrationTypesConfigNullableInner" $ \_ -> pure PrivateApplicationResponseIntegrationTypesConfigNullableInner