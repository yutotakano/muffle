{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandPatchRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.InteractionContextType
import Muffle.Discord.Generated.Schemas.ApplicationCommandHandler
import Muffle.Discord.Generated.Schemas.ApplicationIntegrationType
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

data ApplicationCommandPatchRequestPartial = ApplicationCommandPatchRequestPartial
    { contexts :: Maybe [InteractionContextType]
    , defaultMemberPermissions :: Maybe (Maybe Integer)
    , description :: Maybe (Maybe String)
    , descriptionLocalizations :: Maybe ApplicationCommandPatchRequestPartialDescriptionLocalizationsNullableInner
    , dmPermission :: Maybe (Maybe Bool)
    , handler :: Maybe (Maybe ApplicationCommandHandler)
    , integrationTypes :: Maybe [ApplicationIntegrationType]
    , name :: Maybe String
    , nameLocalizations :: Maybe ApplicationCommandPatchRequestPartialNameLocalizationsNullableInner
    , options :: Maybe ApplicationCommandPatchRequestPartialOptionsNullableInner
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandPatchRequestPartialDescriptionLocalizationsNullableInner = ApplicationCommandPatchRequestPartialDescriptionLocalizationsNullableInner (Maybe ApplicationCommandPatchRequestPartialDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandPatchRequestPartialDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandPatchRequestPartialDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandPatchRequestPartialNameLocalizationsNullableInner = ApplicationCommandPatchRequestPartialNameLocalizationsNullableInner (Maybe ApplicationCommandPatchRequestPartialNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandPatchRequestPartialNameLocalizationsNullableInnerNullableInner = ApplicationCommandPatchRequestPartialNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandPatchRequestPartialOptionsNullableInner = ApplicationCommandPatchRequestPartialOptionsNullableInner [ApplicationCommandPatchRequestPartialOptionsNullableInnerItem]
    deriving (Show, Eq, Generic)
data ApplicationCommandPatchRequestPartialOptionsNullableInnerItem = ApplicationCommandPatchRequestPartialOptionsNullableInnerItem0 ApplicationCommandAttachmentOption | ApplicationCommandPatchRequestPartialOptionsNullableInnerItem1 ApplicationCommandBooleanOption | ApplicationCommandPatchRequestPartialOptionsNullableInnerItem2 ApplicationCommandChannelOption | ApplicationCommandPatchRequestPartialOptionsNullableInnerItem3 ApplicationCommandIntegerOption | ApplicationCommandPatchRequestPartialOptionsNullableInnerItem4 ApplicationCommandMentionableOption | ApplicationCommandPatchRequestPartialOptionsNullableInnerItem5 ApplicationCommandNumberOption | ApplicationCommandPatchRequestPartialOptionsNullableInnerItem6 ApplicationCommandRoleOption | ApplicationCommandPatchRequestPartialOptionsNullableInnerItem7 ApplicationCommandStringOption | ApplicationCommandPatchRequestPartialOptionsNullableInnerItem8 ApplicationCommandSubcommandGroupOption | ApplicationCommandPatchRequestPartialOptionsNullableInnerItem9 ApplicationCommandSubcommandOption | ApplicationCommandPatchRequestPartialOptionsNullableInnerItem10 ApplicationCommandUserOption
    deriving (Show, Eq, Generic)
