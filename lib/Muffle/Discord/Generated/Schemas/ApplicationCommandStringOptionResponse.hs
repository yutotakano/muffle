{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandStringOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionStringChoiceResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandStringOptionResponse = ApplicationCommandStringOptionResponse
    { autocomplete :: Bool
    , choices :: [ApplicationCommandOptionStringChoiceResponse]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandStringOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: String
    , maxLength :: Int32
    , minLength :: Int32
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandStringOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: String
    , required :: Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandStringOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandStringOptionResponseDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandStringOptionResponseNameLocalizationsNullableInner = ApplicationCommandStringOptionResponseNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
