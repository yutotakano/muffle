{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ChannelSelectComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ChannelTypes
import Muffle.Discord.Generated.Schemas.ChannelSelectDefaultValueResponse
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data ChannelSelectComponentResponse = ChannelSelectComponentResponse
    { channelTypes :: [ChannelTypes]
    , customId :: String
    , defaultValues :: [ChannelSelectDefaultValueResponse]
    , disabled :: Bool
    , id :: Int32
    , maxValues :: Int32
    , minValues :: Int32
    , placeholder :: String
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
