{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandUserOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandUserOptionResponse = ApplicationCommandUserOptionResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandUserOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandUserOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: String
    , required :: Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandUserOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandUserOptionResponseDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandUserOptionResponseNameLocalizationsNullableInner = ApplicationCommandUserOptionResponseNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
