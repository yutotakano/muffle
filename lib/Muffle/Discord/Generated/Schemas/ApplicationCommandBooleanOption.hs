{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandBooleanOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandBooleanOption = ApplicationCommandBooleanOption
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandBooleanOptionDescriptionLocalizationsNullableInner
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandBooleanOptionNameLocalizationsNullableInner
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandBooleanOptionDescriptionLocalizationsNullableInner = ApplicationCommandBooleanOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandBooleanOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandBooleanOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandBooleanOptionDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandBooleanOptionNameLocalizationsNullableInner = ApplicationCommandBooleanOptionNameLocalizationsNullableInner (Maybe ApplicationCommandBooleanOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandBooleanOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandBooleanOptionNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
