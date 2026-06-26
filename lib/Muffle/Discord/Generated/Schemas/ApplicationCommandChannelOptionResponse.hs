{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandChannelOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ChannelTypes
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandChannelOptionResponse = ApplicationCommandChannelOptionResponse
    { channelTypes :: [ChannelTypes]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandChannelOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandChannelOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: String
    , required :: Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandChannelOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandChannelOptionResponseDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandChannelOptionResponseNameLocalizationsNullableInner = ApplicationCommandChannelOptionResponseNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
