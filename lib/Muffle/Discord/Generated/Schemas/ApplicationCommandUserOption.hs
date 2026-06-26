{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandUserOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandUserOption = ApplicationCommandUserOption
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandUserOptionDescriptionLocalizationsNullableInner
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandUserOptionNameLocalizationsNullableInner
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandUserOptionDescriptionLocalizationsNullableInner = ApplicationCommandUserOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandUserOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandUserOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandUserOptionDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandUserOptionNameLocalizationsNullableInner = ApplicationCommandUserOptionNameLocalizationsNullableInner (Maybe ApplicationCommandUserOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandUserOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandUserOptionNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
