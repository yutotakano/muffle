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
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandMentionableOptionDescriptionLocalizationsNullableInner = ApplicationCommandMentionableOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandMentionableOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandMentionableOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandMentionableOptionDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandMentionableOptionNameLocalizationsNullableInner = ApplicationCommandMentionableOptionNameLocalizationsNullableInner (Maybe ApplicationCommandMentionableOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandMentionableOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandMentionableOptionNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
