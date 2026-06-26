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
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandAttachmentOptionDescriptionLocalizationsNullableInner = ApplicationCommandAttachmentOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandAttachmentOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandAttachmentOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandAttachmentOptionDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandAttachmentOptionNameLocalizationsNullableInner = ApplicationCommandAttachmentOptionNameLocalizationsNullableInner (Maybe ApplicationCommandAttachmentOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandAttachmentOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandAttachmentOptionNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
