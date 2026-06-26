{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandStringOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionStringChoice
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandStringOption = ApplicationCommandStringOption
    { autocomplete :: Maybe (Maybe Bool)
    , choices :: Maybe [ApplicationCommandOptionStringChoice]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandStringOptionDescriptionLocalizationsNullableInner
    , maxLength :: Maybe (Maybe Integer)
    , minLength :: Maybe (Maybe Integer)
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandStringOptionNameLocalizationsNullableInner
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandStringOptionDescriptionLocalizationsNullableInner = ApplicationCommandStringOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandStringOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandStringOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandStringOptionDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandStringOptionNameLocalizationsNullableInner = ApplicationCommandStringOptionNameLocalizationsNullableInner (Maybe ApplicationCommandStringOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandStringOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandStringOptionNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
