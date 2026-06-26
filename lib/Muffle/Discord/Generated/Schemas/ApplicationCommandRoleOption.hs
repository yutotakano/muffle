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
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandRoleOptionDescriptionLocalizationsNullableInner = ApplicationCommandRoleOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandRoleOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandRoleOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandRoleOptionDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandRoleOptionNameLocalizationsNullableInner = ApplicationCommandRoleOptionNameLocalizationsNullableInner (Maybe ApplicationCommandRoleOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandRoleOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandRoleOptionNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
