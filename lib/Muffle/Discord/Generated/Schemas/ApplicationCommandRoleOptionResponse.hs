{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandRoleOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandRoleOptionResponse = ApplicationCommandRoleOptionResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandRoleOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandRoleOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandRoleOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandRoleOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandRoleOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandRoleOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandRoleOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandRoleOptionResponseNameLocalizationsNullableInner = ApplicationCommandRoleOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandRoleOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandRoleOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandRoleOptionResponseNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
