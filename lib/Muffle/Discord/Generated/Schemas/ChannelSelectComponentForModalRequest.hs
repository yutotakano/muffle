{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ChannelSelectComponentForModalRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ChannelTypes
import Muffle.Discord.Generated.Schemas.ChannelSelectDefaultValue
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data ChannelSelectComponentForModalRequest = ChannelSelectComponentForModalRequest
    { channelTypes :: [ChannelTypes]
    , customId :: String
    , defaultValues :: [ChannelSelectDefaultValue]
    , disabled :: Maybe Bool
    , id :: Maybe Int32
    , maxValues :: Maybe Integer
    , minValues :: Maybe Integer
    , placeholder :: Maybe String
    , required :: Maybe Bool
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
