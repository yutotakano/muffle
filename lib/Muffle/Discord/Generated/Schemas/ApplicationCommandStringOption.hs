{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandStringOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionStringChoice
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandStringOption = ApplicationCommandStringOption
    { autocomplete :: Maybe Bool
    , choices :: [ApplicationCommandOptionStringChoice]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandStringOptionDescriptionLocalizationsNullableInner
    , maxLength :: Maybe Integer
    , minLength :: Maybe Integer
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandStringOptionNameLocalizationsNullableInner
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandStringOptionDescriptionLocalizationsNullableInner = ApplicationCommandStringOptionDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandStringOptionNameLocalizationsNullableInner = ApplicationCommandStringOptionNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
