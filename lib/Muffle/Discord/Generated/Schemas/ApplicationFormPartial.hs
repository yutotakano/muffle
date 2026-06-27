{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationFormPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationEventWebhooksStatus
import Muffle.Discord.Generated.Schemas.ActionTypes
import Muffle.Discord.Generated.Schemas.ApplicationExplicitContentFilterTypes
import Muffle.Discord.Generated.Schemas.ApplicationOAuth2InstallParams
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ApplicationTypes

data ApplicationFormPartial = ApplicationFormPartial
    { coverImage :: Maybe (Maybe String)
    , customInstallUrl :: Maybe (Maybe String)
    , description :: Maybe ApplicationFormPartialDescriptionNullableInner
    , eventWebhooksStatus :: Maybe (Maybe ApplicationEventWebhooksStatus)
    , eventWebhooksTypes :: Maybe [ActionTypes]
    , eventWebhooksUrl :: Maybe (Maybe String)
    , explicitContentFilter :: Maybe (Maybe ApplicationExplicitContentFilterTypes)
    , flags :: Maybe (Maybe Integer)
    , icon :: Maybe (Maybe String)
    , installParams :: Maybe (Maybe ApplicationOAuth2InstallParams)
    , integrationTypesConfig :: Maybe ApplicationFormPartialIntegrationTypesConfigNullableInner
    , interactionsEndpointUrl :: Maybe (Maybe String)
    , maxParticipants :: Maybe (Maybe Int32)
    , roleConnectionsVerificationUrl :: Maybe (Maybe String)
    , tags :: Maybe [String]
    , teamId :: Maybe (Maybe SnowflakeType)
    , type' :: Maybe (Maybe ApplicationTypes)
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationFormPartial where
    parseJSON = withObject "ApplicationFormPartial" $ \o ->
        ApplicationFormPartial <$>
            o .: "cover_image"
            <*> o .: "custom_install_url"
            <*> o .: "description"
            <*> o .: "event_webhooks_status"
            <*> o .: "event_webhooks_types"
            <*> o .: "event_webhooks_url"
            <*> o .: "explicit_content_filter"
            <*> o .: "flags"
            <*> o .: "icon"
            <*> o .: "install_params"
            <*> o .: "integration_types_config"
            <*> o .: "interactions_endpoint_url"
            <*> o .: "max_participants"
            <*> o .: "role_connections_verification_url"
            <*> o .: "tags"
            <*> o .: "team_id"
            <*> o .: "type"

newtype ApplicationFormPartialDescriptionNullableInner = ApplicationFormPartialDescriptionNullableInner (Maybe ApplicationFormPartialDescriptionNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationFormPartialDescriptionNullableInner where
    parseJSON v = ApplicationFormPartialDescriptionNullableInner <$> parseJSON v

data ApplicationFormPartialDescriptionNullableInnerNullableInner = ApplicationFormPartialDescriptionNullableInnerNullableInner
    { default' :: String
    , localizations :: Maybe ApplicationFormPartialDescriptionNullableInnerNullableInnerLocalizationsNullableInner
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationFormPartialDescriptionNullableInnerNullableInner where
    parseJSON = withObject "ApplicationFormPartialDescriptionNullableInnerNullableInner" $ \o ->
        ApplicationFormPartialDescriptionNullableInnerNullableInner <$>
            o .: "default"
            <*> o .: "localizations"

newtype ApplicationFormPartialDescriptionNullableInnerNullableInnerLocalizationsNullableInner = ApplicationFormPartialDescriptionNullableInnerNullableInnerLocalizationsNullableInner (Maybe ApplicationFormPartialDescriptionNullableInnerNullableInnerLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationFormPartialDescriptionNullableInnerNullableInnerLocalizationsNullableInner where
    parseJSON v = ApplicationFormPartialDescriptionNullableInnerNullableInnerLocalizationsNullableInner <$> parseJSON v

data ApplicationFormPartialDescriptionNullableInnerNullableInnerLocalizationsNullableInnerNullableInner = ApplicationFormPartialDescriptionNullableInnerNullableInnerLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationFormPartialDescriptionNullableInnerNullableInnerLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationFormPartialDescriptionNullableInnerNullableInnerLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationFormPartialDescriptionNullableInnerNullableInnerLocalizationsNullableInnerNullableInner

newtype ApplicationFormPartialIntegrationTypesConfigNullableInner = ApplicationFormPartialIntegrationTypesConfigNullableInner (Maybe ApplicationFormPartialIntegrationTypesConfigNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationFormPartialIntegrationTypesConfigNullableInner where
    parseJSON v = ApplicationFormPartialIntegrationTypesConfigNullableInner <$> parseJSON v

data ApplicationFormPartialIntegrationTypesConfigNullableInnerNullableInner = ApplicationFormPartialIntegrationTypesConfigNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationFormPartialIntegrationTypesConfigNullableInnerNullableInner where
    parseJSON = withObject "ApplicationFormPartialIntegrationTypesConfigNullableInnerNullableInner" $ \_ -> pure ApplicationFormPartialIntegrationTypesConfigNullableInnerNullableInner