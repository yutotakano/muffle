{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandChannelOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ChannelTypes
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandChannelOption = ApplicationCommandChannelOption
    { channelTypes :: [ChannelTypes]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandChannelOptionDescriptionLocalizationsNullableInner
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandChannelOptionNameLocalizationsNullableInner
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandChannelOptionDescriptionLocalizationsNullableInner = ApplicationCommandChannelOptionDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandChannelOptionNameLocalizationsNullableInner = ApplicationCommandChannelOptionNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
