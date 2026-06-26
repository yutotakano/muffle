{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandMentionableOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandMentionableOptionResponse = ApplicationCommandMentionableOptionResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandMentionableOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandMentionableOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: String
    , required :: Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandMentionableOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandMentionableOptionResponseDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandMentionableOptionResponseNameLocalizationsNullableInner = ApplicationCommandMentionableOptionResponseNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
