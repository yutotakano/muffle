{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandChannelOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ChannelTypes
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandChannelOption = ApplicationCommandChannelOption
    { channelTypes :: Maybe [ChannelTypes]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandChannelOptionDescriptionLocalizationsNullableInner
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandChannelOptionNameLocalizationsNullableInner
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandChannelOptionDescriptionLocalizationsNullableInner = ApplicationCommandChannelOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandChannelOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandChannelOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandChannelOptionDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandChannelOptionNameLocalizationsNullableInner = ApplicationCommandChannelOptionNameLocalizationsNullableInner (Maybe ApplicationCommandChannelOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandChannelOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandChannelOptionNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
