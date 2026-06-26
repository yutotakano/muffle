{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandCreateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.InteractionContextType
import Muffle.Discord.Generated.Schemas.ApplicationCommandHandler
import Muffle.Discord.Generated.Schemas.ApplicationIntegrationType
import Muffle.Discord.Generated.Schemas.ApplicationCommandType
import Muffle.Discord.Generated.Schemas.ApplicationCommandAttachmentOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandBooleanOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandChannelOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandIntegerOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandMentionableOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandNumberOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandRoleOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandStringOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandGroupOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandUserOption

data ApplicationCommandCreateRequest = ApplicationCommandCreateRequest
    { contexts :: Maybe [InteractionContextType]
    , defaultMemberPermissions :: Maybe (Maybe Integer)
    , description :: Maybe (Maybe String)
    , descriptionLocalizations :: Maybe ApplicationCommandCreateRequestDescriptionLocalizationsNullableInner
    , dmPermission :: Maybe (Maybe Bool)
    , handler :: Maybe (Maybe ApplicationCommandHandler)
    , integrationTypes :: Maybe [ApplicationIntegrationType]
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandCreateRequestNameLocalizationsNullableInner
    , options :: Maybe ApplicationCommandCreateRequestOptionsNullableInner
    , type' :: Maybe (Maybe ApplicationCommandType)
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandCreateRequestDescriptionLocalizationsNullableInner = ApplicationCommandCreateRequestDescriptionLocalizationsNullableInner (Maybe ApplicationCommandCreateRequestDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandCreateRequestDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandCreateRequestDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandCreateRequestNameLocalizationsNullableInner = ApplicationCommandCreateRequestNameLocalizationsNullableInner (Maybe ApplicationCommandCreateRequestNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandCreateRequestNameLocalizationsNullableInnerNullableInner = ApplicationCommandCreateRequestNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandCreateRequestOptionsNullableInner = ApplicationCommandCreateRequestOptionsNullableInner [ApplicationCommandCreateRequestOptionsNullableInnerItem]
    deriving (Show, Eq, Generic)
data ApplicationCommandCreateRequestOptionsNullableInnerItem = ApplicationCommandCreateRequestOptionsNullableInnerItem0 ApplicationCommandAttachmentOption | ApplicationCommandCreateRequestOptionsNullableInnerItem1 ApplicationCommandBooleanOption | ApplicationCommandCreateRequestOptionsNullableInnerItem2 ApplicationCommandChannelOption | ApplicationCommandCreateRequestOptionsNullableInnerItem3 ApplicationCommandIntegerOption | ApplicationCommandCreateRequestOptionsNullableInnerItem4 ApplicationCommandMentionableOption | ApplicationCommandCreateRequestOptionsNullableInnerItem5 ApplicationCommandNumberOption | ApplicationCommandCreateRequestOptionsNullableInnerItem6 ApplicationCommandRoleOption | ApplicationCommandCreateRequestOptionsNullableInnerItem7 ApplicationCommandStringOption | ApplicationCommandCreateRequestOptionsNullableInnerItem8 ApplicationCommandSubcommandGroupOption | ApplicationCommandCreateRequestOptionsNullableInnerItem9 ApplicationCommandSubcommandOption | ApplicationCommandCreateRequestOptionsNullableInnerItem10 ApplicationCommandUserOption
    deriving (Show, Eq, Generic)
