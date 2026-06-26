{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandBooleanOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandBooleanOptionResponse = ApplicationCommandBooleanOptionResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandBooleanOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandBooleanOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: String
    , required :: Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandBooleanOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandBooleanOptionResponseDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandBooleanOptionResponseNameLocalizationsNullableInner = ApplicationCommandBooleanOptionResponseNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
