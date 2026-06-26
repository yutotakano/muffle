{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandUpdateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.InteractionContextType
import Muffle.Discord.Generated.Schemas.ApplicationCommandHandler
import Muffle.Discord.Generated.Schemas.SnowflakeType
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

data ApplicationCommandUpdateRequest = ApplicationCommandUpdateRequest
    { contexts :: [InteractionContextType]
    , defaultMemberPermissions :: Maybe Integer
    , description :: Maybe String
    , descriptionLocalizations :: Maybe ApplicationCommandUpdateRequestDescriptionLocalizationsNullableInner
    , dmPermission :: Maybe Bool
    , handler :: Maybe ApplicationCommandHandler
    , id :: Maybe SnowflakeType
    , integrationTypes :: [ApplicationIntegrationType]
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandUpdateRequestNameLocalizationsNullableInner
    , options :: [ApplicationCommandUpdateRequestOptionsItem]
    , type' :: Maybe ApplicationCommandType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandUpdateRequestDescriptionLocalizationsNullableInner = ApplicationCommandUpdateRequestDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandUpdateRequestNameLocalizationsNullableInner = ApplicationCommandUpdateRequestNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandUpdateRequestOptionsItem = ApplicationCommandUpdateRequestOptionsItem0 ApplicationCommandAttachmentOption | ApplicationCommandUpdateRequestOptionsItem1 ApplicationCommandBooleanOption | ApplicationCommandUpdateRequestOptionsItem2 ApplicationCommandChannelOption | ApplicationCommandUpdateRequestOptionsItem3 ApplicationCommandIntegerOption | ApplicationCommandUpdateRequestOptionsItem4 ApplicationCommandMentionableOption | ApplicationCommandUpdateRequestOptionsItem5 ApplicationCommandNumberOption | ApplicationCommandUpdateRequestOptionsItem6 ApplicationCommandRoleOption | ApplicationCommandUpdateRequestOptionsItem7 ApplicationCommandStringOption | ApplicationCommandUpdateRequestOptionsItem8 ApplicationCommandSubcommandGroupOption | ApplicationCommandUpdateRequestOptionsItem9 ApplicationCommandSubcommandOption | ApplicationCommandUpdateRequestOptionsItem10 ApplicationCommandUserOption
    deriving (Show, Eq, Generic)
