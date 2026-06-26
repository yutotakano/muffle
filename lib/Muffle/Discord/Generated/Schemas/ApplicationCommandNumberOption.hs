{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandNumberOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionNumberChoice
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandNumberOption = ApplicationCommandNumberOption
    { autocomplete :: Maybe (Maybe Bool)
    , choices :: Maybe [ApplicationCommandOptionNumberChoice]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandNumberOptionDescriptionLocalizationsNullableInner
    , maxValue :: Maybe (Maybe Integer)
    , minValue :: Maybe (Maybe Integer)
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandNumberOptionNameLocalizationsNullableInner
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandNumberOptionDescriptionLocalizationsNullableInner = ApplicationCommandNumberOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandNumberOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandNumberOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandNumberOptionDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandNumberOptionNameLocalizationsNullableInner = ApplicationCommandNumberOptionNameLocalizationsNullableInner (Maybe ApplicationCommandNumberOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandNumberOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandNumberOptionNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
