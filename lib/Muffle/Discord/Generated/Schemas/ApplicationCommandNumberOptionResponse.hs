{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandNumberOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionNumberChoiceResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandNumberOptionResponse = ApplicationCommandNumberOptionResponse
    { autocomplete :: Maybe Bool
    , choices :: Maybe [ApplicationCommandOptionNumberChoiceResponse]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandNumberOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , maxValue :: Maybe Integer
    , minValue :: Maybe Integer
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandNumberOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandNumberOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandNumberOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandNumberOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandNumberOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandNumberOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandNumberOptionResponseNameLocalizationsNullableInner = ApplicationCommandNumberOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandNumberOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandNumberOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandNumberOptionResponseNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
