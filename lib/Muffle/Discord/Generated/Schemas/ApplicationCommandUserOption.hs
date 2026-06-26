{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandUserOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandUserOption = ApplicationCommandUserOption
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandUserOptionDescriptionLocalizationsNullableInner
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandUserOptionNameLocalizationsNullableInner
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandUserOptionDescriptionLocalizationsNullableInner = ApplicationCommandUserOptionDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandUserOptionNameLocalizationsNullableInner = ApplicationCommandUserOptionNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
