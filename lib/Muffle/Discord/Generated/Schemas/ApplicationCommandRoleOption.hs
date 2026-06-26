{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandRoleOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandRoleOption = ApplicationCommandRoleOption
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandRoleOptionDescriptionLocalizationsNullableInner
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandRoleOptionNameLocalizationsNullableInner
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandRoleOptionDescriptionLocalizationsNullableInner = ApplicationCommandRoleOptionDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandRoleOptionNameLocalizationsNullableInner = ApplicationCommandRoleOptionNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
