{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ChannelSelectComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
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

instance FromJSON ChannelSelectComponentResponse where
    parseJSON = withObject "ChannelSelectComponentResponse" $ \o ->
        ChannelSelectComponentResponse <$>
            o .: "channel_types"
            <*> o .: "custom_id"
            <*> o .: "default_values"
            <*> o .: "disabled"
            <*> o .: "id"
            <*> o .: "max_values"
            <*> o .: "min_values"
            <*> o .: "placeholder"
            <*> o .: "type"