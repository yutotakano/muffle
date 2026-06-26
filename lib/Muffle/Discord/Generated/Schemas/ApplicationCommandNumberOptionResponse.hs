{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandNumberOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionNumberChoiceResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandNumberOptionResponse = ApplicationCommandNumberOptionResponse
    { autocomplete :: Bool
    , choices :: [ApplicationCommandOptionNumberChoiceResponse]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandNumberOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: String
    , maxValue :: Integer
    , minValue :: Integer
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandNumberOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: String
    , required :: Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandNumberOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandNumberOptionResponseDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandNumberOptionResponseNameLocalizationsNullableInner = ApplicationCommandNumberOptionResponseNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
