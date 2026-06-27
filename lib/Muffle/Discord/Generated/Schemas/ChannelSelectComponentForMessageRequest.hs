{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ChannelSelectComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ChannelTypes
import Muffle.Discord.Generated.Schemas.ChannelSelectDefaultValue
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data ChannelSelectComponentForMessageRequest = ChannelSelectComponentForMessageRequest
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

instance FromJSON ChannelSelectComponentForMessageRequest where
    parseJSON = withObject "ChannelSelectComponentForMessageRequest" $ \o ->
        ChannelSelectComponentForMessageRequest <$>
            o .: "channel_types"
            <*> o .: "custom_id"
            <*> o .: "default_values"
            <*> o .: "disabled"
            <*> o .: "id"
            <*> o .: "max_values"
            <*> o .: "min_values"
            <*> o .: "placeholder"
            <*> o .: "required"
            <*> o .: "type"