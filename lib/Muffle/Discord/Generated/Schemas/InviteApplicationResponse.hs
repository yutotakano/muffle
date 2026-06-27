{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.InviteApplicationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ApplicationOAuth2InstallParamsResponse
import Muffle.Discord.Generated.Schemas.ApplicationTypes

data InviteApplicationResponse = InviteApplicationResponse
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
    , integrationTypesConfig :: Maybe InviteApplicationResponseIntegrationTypesConfigNullableInner
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

instance FromJSON InviteApplicationResponse where
    parseJSON = withObject "InviteApplicationResponse" $ \o ->
        InviteApplicationResponse <$>
            o .: "bot"
            <*> o .: "bot_public"
            <*> o .: "bot_require_code_grant"
            <*> o .: "cover_image"
            <*> o .: "custom_install_url"
            <*> o .: "description"
            <*> o .: "flags"
            <*> o .: "flags_new"
            <*> o .: "guild_id"
            <*> o .: "icon"
            <*> o .: "id"
            <*> o .: "install_params"
            <*> o .: "integration_types_config"
            <*> o .: "max_participants"
            <*> o .: "name"
            <*> o .: "primary_sku_id"
            <*> o .: "privacy_policy_url"
            <*> o .: "rpc_origins"
            <*> o .: "slug"
            <*> o .: "tags"
            <*> o .: "terms_of_service_url"
            <*> o .: "type"
            <*> o .: "verify_key"

data InviteApplicationResponseIntegrationTypesConfigNullableInner = InviteApplicationResponseIntegrationTypesConfigNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON InviteApplicationResponseIntegrationTypesConfigNullableInner where
    parseJSON = withObject "InviteApplicationResponseIntegrationTypesConfigNullableInner" $ \_ -> pure InviteApplicationResponseIntegrationTypesConfigNullableInner