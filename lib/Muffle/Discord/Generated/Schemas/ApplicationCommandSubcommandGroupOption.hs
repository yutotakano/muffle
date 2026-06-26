{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandGroupOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandSubcommandGroupOption = ApplicationCommandSubcommandGroupOption
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandSubcommandGroupOptionDescriptionLocalizationsNullableInner
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandSubcommandGroupOptionNameLocalizationsNullableInner
    , options :: [ApplicationCommandSubcommandOption]
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandSubcommandGroupOptionDescriptionLocalizationsNullableInner = ApplicationCommandSubcommandGroupOptionDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandSubcommandGroupOptionNameLocalizationsNullableInner = ApplicationCommandSubcommandGroupOptionNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
