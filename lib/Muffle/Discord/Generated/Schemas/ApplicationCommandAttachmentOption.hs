{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandAttachmentOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandAttachmentOption = ApplicationCommandAttachmentOption
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandAttachmentOptionDescriptionLocalizationsNullableInner
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandAttachmentOptionNameLocalizationsNullableInner
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandAttachmentOptionDescriptionLocalizationsNullableInner = ApplicationCommandAttachmentOptionDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandAttachmentOptionNameLocalizationsNullableInner = ApplicationCommandAttachmentOptionNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
