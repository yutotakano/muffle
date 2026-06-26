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
    , options :: Maybe ApplicationCommandSubcommandOptionOptionsNullableInner
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandSubcommandOptionDescriptionLocalizationsNullableInner = ApplicationCommandSubcommandOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandSubcommandOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandSubcommandOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandSubcommandOptionDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandSubcommandOptionNameLocalizationsNullableInner = ApplicationCommandSubcommandOptionNameLocalizationsNullableInner (Maybe ApplicationCommandSubcommandOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandSubcommandOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandSubcommandOptionNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandSubcommandOptionOptionsNullableInner = ApplicationCommandSubcommandOptionOptionsNullableInner [ApplicationCommandSubcommandOptionOptionsNullableInnerItem]
    deriving (Show, Eq, Generic)
data ApplicationCommandSubcommandOptionOptionsNullableInnerItem = ApplicationCommandSubcommandOptionOptionsNullableInnerItem0 ApplicationCommandAttachmentOption | ApplicationCommandSubcommandOptionOptionsNullableInnerItem1 ApplicationCommandBooleanOption | ApplicationCommandSubcommandOptionOptionsNullableInnerItem2 ApplicationCommandChannelOption | ApplicationCommandSubcommandOptionOptionsNullableInnerItem3 ApplicationCommandIntegerOption | ApplicationCommandSubcommandOptionOptionsNullableInnerItem4 ApplicationCommandMentionableOption | ApplicationCommandSubcommandOptionOptionsNullableInnerItem5 ApplicationCommandNumberOption | ApplicationCommandSubcommandOptionOptionsNullableInnerItem6 ApplicationCommandRoleOption | ApplicationCommandSubcommandOptionOptionsNullableInnerItem7 ApplicationCommandStringOption | ApplicationCommandSubcommandOptionOptionsNullableInnerItem8 ApplicationCommandUserOption
    deriving (Show, Eq, Generic)
