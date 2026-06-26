{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandIntegerOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionIntegerChoice
import Muffle.Discord.Generated.Schemas.Int53Type
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandIntegerOption = ApplicationCommandIntegerOption
    { autocomplete :: Maybe Bool
    , choices :: [ApplicationCommandOptionIntegerChoice]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandIntegerOptionDescriptionLocalizationsNullableInner
    , maxValue :: Maybe Int53Type
    , minValue :: Maybe Int53Type
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandIntegerOptionNameLocalizationsNullableInner
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandIntegerOptionDescriptionLocalizationsNullableInner = ApplicationCommandIntegerOptionDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandIntegerOptionNameLocalizationsNullableInner = ApplicationCommandIntegerOptionNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
