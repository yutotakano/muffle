{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationFormPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
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
newtype ApplicationFormPartialDescriptionNullableInner = ApplicationFormPartialDescriptionNullableInner (Maybe ApplicationFormPartialDescriptionNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationFormPartialDescriptionNullableInnerNullableInner = ApplicationFormPartialDescriptionNullableInnerNullableInner
    { default' :: String
    , localizations :: Maybe ApplicationFormPartialDescriptionNullableInnerNullableInnerLocalizationsNullableInner
    }
    deriving (Show, Eq, Generic)
newtype ApplicationFormPartialDescriptionNullableInnerNullableInnerLocalizationsNullableInner = ApplicationFormPartialDescriptionNullableInnerNullableInnerLocalizationsNullableInner (Maybe ApplicationFormPartialDescriptionNullableInnerNullableInnerLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationFormPartialDescriptionNullableInnerNullableInnerLocalizationsNullableInnerNullableInner = ApplicationFormPartialDescriptionNullableInnerNullableInnerLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationFormPartialIntegrationTypesConfigNullableInner = ApplicationFormPartialIntegrationTypesConfigNullableInner (Maybe ApplicationFormPartialIntegrationTypesConfigNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationFormPartialIntegrationTypesConfigNullableInnerNullableInner = ApplicationFormPartialIntegrationTypesConfigNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
