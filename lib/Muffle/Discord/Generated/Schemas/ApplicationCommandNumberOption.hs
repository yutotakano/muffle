{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandNumberOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionNumberChoice
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandNumberOption = ApplicationCommandNumberOption
    { autocomplete :: Maybe Bool
    , choices :: [ApplicationCommandOptionNumberChoice]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandNumberOptionDescriptionLocalizationsNullableInner
    , maxValue :: Maybe Integer
    , minValue :: Maybe Integer
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandNumberOptionNameLocalizationsNullableInner
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandNumberOptionDescriptionLocalizationsNullableInner = ApplicationCommandNumberOptionDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandNumberOptionNameLocalizationsNullableInner = ApplicationCommandNumberOptionNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
