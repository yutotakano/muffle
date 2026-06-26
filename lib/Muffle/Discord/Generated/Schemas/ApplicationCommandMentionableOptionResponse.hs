{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandMentionableOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandMentionableOptionResponse = ApplicationCommandMentionableOptionResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandMentionableOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandMentionableOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandMentionableOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandMentionableOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandMentionableOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandMentionableOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandMentionableOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandMentionableOptionResponseNameLocalizationsNullableInner = ApplicationCommandMentionableOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandMentionableOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandMentionableOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandMentionableOptionResponseNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
