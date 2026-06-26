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
    { contexts :: [InteractionContextType]
    , defaultMemberPermissions :: Maybe Integer
    , description :: Maybe String
    , descriptionLocalizations :: Maybe ApplicationCommandCreateRequestDescriptionLocalizationsNullableInner
    , dmPermission :: Maybe Bool
    , handler :: Maybe ApplicationCommandHandler
    , integrationTypes :: [ApplicationIntegrationType]
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandCreateRequestNameLocalizationsNullableInner
    , options :: [ApplicationCommandCreateRequestOptionsItem]
    , type' :: Maybe ApplicationCommandType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandCreateRequestDescriptionLocalizationsNullableInner = ApplicationCommandCreateRequestDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandCreateRequestNameLocalizationsNullableInner = ApplicationCommandCreateRequestNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandCreateRequestOptionsItem = ApplicationCommandCreateRequestOptionsItem0 ApplicationCommandAttachmentOption | ApplicationCommandCreateRequestOptionsItem1 ApplicationCommandBooleanOption | ApplicationCommandCreateRequestOptionsItem2 ApplicationCommandChannelOption | ApplicationCommandCreateRequestOptionsItem3 ApplicationCommandIntegerOption | ApplicationCommandCreateRequestOptionsItem4 ApplicationCommandMentionableOption | ApplicationCommandCreateRequestOptionsItem5 ApplicationCommandNumberOption | ApplicationCommandCreateRequestOptionsItem6 ApplicationCommandRoleOption | ApplicationCommandCreateRequestOptionsItem7 ApplicationCommandStringOption | ApplicationCommandCreateRequestOptionsItem8 ApplicationCommandSubcommandGroupOption | ApplicationCommandCreateRequestOptionsItem9 ApplicationCommandSubcommandOption | ApplicationCommandCreateRequestOptionsItem10 ApplicationCommandUserOption
    deriving (Show, Eq, Generic)
