{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandUserOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandUserOptionResponse = ApplicationCommandUserOptionResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandUserOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandUserOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandUserOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandUserOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandUserOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandUserOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandUserOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandUserOptionResponseNameLocalizationsNullableInner = ApplicationCommandUserOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandUserOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandUserOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandUserOptionResponseNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
