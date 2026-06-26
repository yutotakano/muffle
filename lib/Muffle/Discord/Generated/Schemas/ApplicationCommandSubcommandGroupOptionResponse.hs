{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandGroupOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandSubcommandGroupOptionResponse = ApplicationCommandSubcommandGroupOptionResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandSubcommandGroupOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandSubcommandGroupOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , options :: Maybe [ApplicationCommandSubcommandOptionResponse]
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandSubcommandGroupOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandSubcommandGroupOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandSubcommandGroupOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandSubcommandGroupOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandSubcommandGroupOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandSubcommandGroupOptionResponseNameLocalizationsNullableInner = ApplicationCommandSubcommandGroupOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandSubcommandGroupOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandSubcommandGroupOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandSubcommandGroupOptionResponseNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
