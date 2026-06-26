{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandGroupOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandSubcommandGroupOption = ApplicationCommandSubcommandGroupOption
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandSubcommandGroupOptionDescriptionLocalizationsNullableInner
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandSubcommandGroupOptionNameLocalizationsNullableInner
    , options :: Maybe [ApplicationCommandSubcommandOption]
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandSubcommandGroupOptionDescriptionLocalizationsNullableInner = ApplicationCommandSubcommandGroupOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandSubcommandGroupOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandSubcommandGroupOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandSubcommandGroupOptionDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandSubcommandGroupOptionNameLocalizationsNullableInner = ApplicationCommandSubcommandGroupOptionNameLocalizationsNullableInner (Maybe ApplicationCommandSubcommandGroupOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandSubcommandGroupOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandSubcommandGroupOptionNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
