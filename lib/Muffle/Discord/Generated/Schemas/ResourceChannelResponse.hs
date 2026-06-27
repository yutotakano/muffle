{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ResourceChannelResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.SettingsEmojiResponse

data ResourceChannelResponse = ResourceChannelResponse
    { channelId :: SnowflakeType
    , description :: String
    , emoji :: Maybe SettingsEmojiResponse
    , icon :: Maybe String
    , title :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON ResourceChannelResponse where
    parseJSON = withObject "ResourceChannelResponse" $ \o ->
        ResourceChannelResponse <$>
            o .: "channel_id"
            <*> o .: "description"
            <*> o .: "emoji"
            <*> o .: "icon"
            <*> o .: "title"