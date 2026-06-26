{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandAttachmentOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandAttachmentOptionResponse = ApplicationCommandAttachmentOptionResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandAttachmentOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandAttachmentOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: String
    , required :: Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandAttachmentOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandAttachmentOptionResponseDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandAttachmentOptionResponseNameLocalizationsNullableInner = ApplicationCommandAttachmentOptionResponseNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
