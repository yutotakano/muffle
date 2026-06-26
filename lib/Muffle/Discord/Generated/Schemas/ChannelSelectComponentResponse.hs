{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ChannelSelectComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ChannelTypes
import Muffle.Discord.Generated.Schemas.ChannelSelectDefaultValueResponse
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data ChannelSelectComponentResponse = ChannelSelectComponentResponse
    { channelTypes :: Maybe [ChannelTypes]
    , customId :: String
    , defaultValues :: Maybe [ChannelSelectDefaultValueResponse]
    , disabled :: Maybe Bool
    , id :: Int32
    , maxValues :: Int32
    , minValues :: Int32
    , placeholder :: Maybe String
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
