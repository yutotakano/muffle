{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandMentionableOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandMentionableOption = ApplicationCommandMentionableOption
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandMentionableOptionDescriptionLocalizationsNullableInner
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandMentionableOptionNameLocalizationsNullableInner
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandMentionableOptionDescriptionLocalizationsNullableInner = ApplicationCommandMentionableOptionDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandMentionableOptionNameLocalizationsNullableInner = ApplicationCommandMentionableOptionNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
