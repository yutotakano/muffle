{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandIntegerOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionIntegerChoiceResponse
import Muffle.Discord.Generated.Schemas.Int53Type
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandIntegerOptionResponse = ApplicationCommandIntegerOptionResponse
    { autocomplete :: Maybe Bool
    , choices :: Maybe [ApplicationCommandOptionIntegerChoiceResponse]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandIntegerOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , maxValue :: Maybe Int53Type
    , minValue :: Maybe Int53Type
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandIntegerOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandIntegerOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandIntegerOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandIntegerOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandIntegerOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandIntegerOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandIntegerOptionResponseNameLocalizationsNullableInner = ApplicationCommandIntegerOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandIntegerOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandIntegerOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandIntegerOptionResponseNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
