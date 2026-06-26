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
    { coverImage :: Maybe String
    , customInstallUrl :: Maybe String
    , description :: Maybe ApplicationFormPartialDescriptionNullableInner
    , eventWebhooksStatus :: Maybe ApplicationEventWebhooksStatus
    , eventWebhooksTypes :: [ActionTypes]
    , eventWebhooksUrl :: Maybe String
    , explicitContentFilter :: Maybe ApplicationExplicitContentFilterTypes
    , flags :: Maybe Integer
    , icon :: Maybe String
    , installParams :: Maybe ApplicationOAuth2InstallParams
    , integrationTypesConfig :: Maybe ApplicationFormPartialIntegrationTypesConfigNullableInner
    , interactionsEndpointUrl :: Maybe String
    , maxParticipants :: Maybe Int32
    , roleConnectionsVerificationUrl :: Maybe String
    , tags :: [String]
    , teamId :: Maybe SnowflakeType
    , type' :: Maybe ApplicationTypes
    }
    deriving (Show, Eq, Generic)
data ApplicationFormPartialDescriptionNullableInner = ApplicationFormPartialDescriptionNullableInner
    { default' :: String
    , localizations :: Maybe ApplicationFormPartialDescriptionNullableInnerLocalizationsNullableInner
    }
    deriving (Show, Eq, Generic)
data ApplicationFormPartialDescriptionNullableInnerLocalizationsNullableInner = ApplicationFormPartialDescriptionNullableInnerLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationFormPartialIntegrationTypesConfigNullableInner = ApplicationFormPartialIntegrationTypesConfigNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
