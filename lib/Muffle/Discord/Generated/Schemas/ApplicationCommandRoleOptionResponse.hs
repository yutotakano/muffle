{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandRoleOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandRoleOptionResponse = ApplicationCommandRoleOptionResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandRoleOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandRoleOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: String
    , required :: Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandRoleOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandRoleOptionResponseDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandRoleOptionResponseNameLocalizationsNullableInner = ApplicationCommandRoleOptionResponseNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
