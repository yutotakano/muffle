{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandGroupOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandSubcommandGroupOptionResponse = ApplicationCommandSubcommandGroupOptionResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandSubcommandGroupOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandSubcommandGroupOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: String
    , options :: [ApplicationCommandSubcommandOptionResponse]
    , required :: Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandSubcommandGroupOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandSubcommandGroupOptionResponseDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandSubcommandGroupOptionResponseNameLocalizationsNullableInner = ApplicationCommandSubcommandGroupOptionResponseNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
