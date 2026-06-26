{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ChannelSelectComponentForModalRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ChannelTypes
import Muffle.Discord.Generated.Schemas.ChannelSelectDefaultValue
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data ChannelSelectComponentForModalRequest = ChannelSelectComponentForModalRequest
    { channelTypes :: Maybe [ChannelTypes]
    , customId :: String
    , defaultValues :: Maybe [ChannelSelectDefaultValue]
    , disabled :: Maybe (Maybe Bool)
    , id :: Maybe (Maybe Int32)
    , maxValues :: Maybe (Maybe Integer)
    , minValues :: Maybe (Maybe Integer)
    , placeholder :: Maybe (Maybe String)
    , required :: Maybe (Maybe Bool)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
