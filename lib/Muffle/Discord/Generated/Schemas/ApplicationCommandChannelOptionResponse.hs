{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandChannelOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ChannelTypes
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandChannelOptionResponse = ApplicationCommandChannelOptionResponse
    { channelTypes :: Maybe [ChannelTypes]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandChannelOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandChannelOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandChannelOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandChannelOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandChannelOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandChannelOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandChannelOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandChannelOptionResponseNameLocalizationsNullableInner = ApplicationCommandChannelOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandChannelOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandChannelOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandChannelOptionResponseNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
