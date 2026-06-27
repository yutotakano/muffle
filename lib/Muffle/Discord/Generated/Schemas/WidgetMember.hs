{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.WidgetMember where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.WidgetActivity
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.WidgetUserDiscriminator

data WidgetMember = WidgetMember
    { activity :: Maybe WidgetActivity
    , avatar :: Maybe ()
    , avatarUrl :: String
    , channelId :: Maybe SnowflakeType
    , deaf :: Maybe Bool
    , discriminator :: WidgetUserDiscriminator
    , id :: String
    , mute :: Maybe Bool
    , selfDeaf :: Maybe Bool
    , selfMute :: Maybe Bool
    , status :: String
    , suppress :: Maybe Bool
    , username :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON WidgetMember where
    parseJSON = withObject "WidgetMember" $ \o ->
        WidgetMember <$>
            o .: "activity"
            <*> o .: "avatar"
            <*> o .: "avatar_url"
            <*> o .: "channel_id"
            <*> o .: "deaf"
            <*> o .: "discriminator"
            <*> o .: "id"
            <*> o .: "mute"
            <*> o .: "self_deaf"
            <*> o .: "self_mute"
            <*> o .: "status"
            <*> o .: "suppress"
            <*> o .: "username"