{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandStringOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionStringChoiceResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandStringOptionResponse = ApplicationCommandStringOptionResponse
    { autocomplete :: Maybe Bool
    , choices :: Maybe [ApplicationCommandOptionStringChoiceResponse]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandStringOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , maxLength :: Maybe Int32
    , minLength :: Maybe Int32
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandStringOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandStringOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandStringOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandStringOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandStringOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandStringOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandStringOptionResponseNameLocalizationsNullableInner = ApplicationCommandStringOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandStringOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandStringOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandStringOptionResponseNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
