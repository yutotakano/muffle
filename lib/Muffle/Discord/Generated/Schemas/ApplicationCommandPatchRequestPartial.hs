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
    { contexts :: [InteractionContextType]
    , defaultMemberPermissions :: Maybe Integer
    , description :: Maybe String
    , descriptionLocalizations :: Maybe ApplicationCommandPatchRequestPartialDescriptionLocalizationsNullableInner
    , dmPermission :: Maybe Bool
    , handler :: Maybe ApplicationCommandHandler
    , integrationTypes :: [ApplicationIntegrationType]
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandPatchRequestPartialNameLocalizationsNullableInner
    , options :: [ApplicationCommandPatchRequestPartialOptionsItem]
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandPatchRequestPartialDescriptionLocalizationsNullableInner = ApplicationCommandPatchRequestPartialDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandPatchRequestPartialNameLocalizationsNullableInner = ApplicationCommandPatchRequestPartialNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandPatchRequestPartialOptionsItem = ApplicationCommandPatchRequestPartialOptionsItem0 ApplicationCommandAttachmentOption | ApplicationCommandPatchRequestPartialOptionsItem1 ApplicationCommandBooleanOption | ApplicationCommandPatchRequestPartialOptionsItem2 ApplicationCommandChannelOption | ApplicationCommandPatchRequestPartialOptionsItem3 ApplicationCommandIntegerOption | ApplicationCommandPatchRequestPartialOptionsItem4 ApplicationCommandMentionableOption | ApplicationCommandPatchRequestPartialOptionsItem5 ApplicationCommandNumberOption | ApplicationCommandPatchRequestPartialOptionsItem6 ApplicationCommandRoleOption | ApplicationCommandPatchRequestPartialOptionsItem7 ApplicationCommandStringOption | ApplicationCommandPatchRequestPartialOptionsItem8 ApplicationCommandSubcommandGroupOption | ApplicationCommandPatchRequestPartialOptionsItem9 ApplicationCommandSubcommandOption | ApplicationCommandPatchRequestPartialOptionsItem10 ApplicationCommandUserOption
    deriving (Show, Eq, Generic)
