{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandBooleanOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandBooleanOptionResponse = ApplicationCommandBooleanOptionResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandBooleanOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandBooleanOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandBooleanOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandBooleanOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandBooleanOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandBooleanOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandBooleanOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandBooleanOptionResponseNameLocalizationsNullableInner = ApplicationCommandBooleanOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandBooleanOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandBooleanOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandBooleanOptionResponseNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
