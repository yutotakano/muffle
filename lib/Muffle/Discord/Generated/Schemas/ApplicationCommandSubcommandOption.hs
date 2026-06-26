{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType
import Muffle.Discord.Generated.Schemas.ApplicationCommandAttachmentOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandBooleanOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandChannelOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandIntegerOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandMentionableOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandNumberOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandRoleOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandStringOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandUserOption

data ApplicationCommandSubcommandOption = ApplicationCommandSubcommandOption
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandSubcommandOptionDescriptionLocalizationsNullableInner
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandSubcommandOptionNameLocalizationsNullableInner
    , options :: [ApplicationCommandSubcommandOptionOptionsItem]
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandSubcommandOptionDescriptionLocalizationsNullableInner = ApplicationCommandSubcommandOptionDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandSubcommandOptionNameLocalizationsNullableInner = ApplicationCommandSubcommandOptionNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandSubcommandOptionOptionsItem = ApplicationCommandSubcommandOptionOptionsItem0 ApplicationCommandAttachmentOption | ApplicationCommandSubcommandOptionOptionsItem1 ApplicationCommandBooleanOption | ApplicationCommandSubcommandOptionOptionsItem2 ApplicationCommandChannelOption | ApplicationCommandSubcommandOptionOptionsItem3 ApplicationCommandIntegerOption | ApplicationCommandSubcommandOptionOptionsItem4 ApplicationCommandMentionableOption | ApplicationCommandSubcommandOptionOptionsItem5 ApplicationCommandNumberOption | ApplicationCommandSubcommandOptionOptionsItem6 ApplicationCommandRoleOption | ApplicationCommandSubcommandOptionOptionsItem7 ApplicationCommandStringOption | ApplicationCommandSubcommandOptionOptionsItem8 ApplicationCommandUserOption
    deriving (Show, Eq, Generic)
