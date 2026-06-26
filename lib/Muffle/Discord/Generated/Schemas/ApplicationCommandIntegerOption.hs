{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandIntegerOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionIntegerChoice
import Muffle.Discord.Generated.Schemas.Int53Type
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandIntegerOption = ApplicationCommandIntegerOption
    { autocomplete :: Maybe (Maybe Bool)
    , choices :: Maybe [ApplicationCommandOptionIntegerChoice]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandIntegerOptionDescriptionLocalizationsNullableInner
    , maxValue :: Maybe (Maybe Int53Type)
    , minValue :: Maybe (Maybe Int53Type)
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandIntegerOptionNameLocalizationsNullableInner
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandIntegerOptionDescriptionLocalizationsNullableInner = ApplicationCommandIntegerOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandIntegerOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandIntegerOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandIntegerOptionDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandIntegerOptionNameLocalizationsNullableInner = ApplicationCommandIntegerOptionNameLocalizationsNullableInner (Maybe ApplicationCommandIntegerOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandIntegerOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandIntegerOptionNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
