{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandAttachmentOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandAttachmentOptionResponse = ApplicationCommandAttachmentOptionResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandAttachmentOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandAttachmentOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandAttachmentOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandAttachmentOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandAttachmentOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandAttachmentOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandAttachmentOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandAttachmentOptionResponseNameLocalizationsNullableInner = ApplicationCommandAttachmentOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandAttachmentOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandAttachmentOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandAttachmentOptionResponseNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
