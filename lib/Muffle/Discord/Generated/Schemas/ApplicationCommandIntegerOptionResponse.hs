{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandIntegerOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionIntegerChoiceResponse
import Muffle.Discord.Generated.Schemas.Int53Type
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandIntegerOptionResponse = ApplicationCommandIntegerOptionResponse
    { autocomplete :: Bool
    , choices :: [ApplicationCommandOptionIntegerChoiceResponse]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandIntegerOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: String
    , maxValue :: Int53Type
    , minValue :: Int53Type
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandIntegerOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: String
    , required :: Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandIntegerOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandIntegerOptionResponseDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandIntegerOptionResponseNameLocalizationsNullableInner = ApplicationCommandIntegerOptionResponseNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
