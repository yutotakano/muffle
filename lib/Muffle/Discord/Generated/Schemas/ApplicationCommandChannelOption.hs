{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandChannelOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ChannelTypes
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandChannelOption = ApplicationCommandChannelOption
    { channelTypes :: Maybe [ChannelTypes]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandChannelOptionDescriptionLocalizationsNullableInner
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandChannelOptionNameLocalizationsNullableInner
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandChannelOption where
    parseJSON = withObject "ApplicationCommandChannelOption" $ \o ->
        ApplicationCommandChannelOption <$>
            o .: "channel_types"
            <*> o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "required"
            <*> o .: "type"

newtype ApplicationCommandChannelOptionDescriptionLocalizationsNullableInner = ApplicationCommandChannelOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandChannelOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandChannelOptionDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandChannelOptionDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandChannelOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandChannelOptionDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandChannelOptionDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandChannelOptionDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandChannelOptionDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandChannelOptionNameLocalizationsNullableInner = ApplicationCommandChannelOptionNameLocalizationsNullableInner (Maybe ApplicationCommandChannelOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandChannelOptionNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandChannelOptionNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandChannelOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandChannelOptionNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandChannelOptionNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandChannelOptionNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandChannelOptionNameLocalizationsNullableInnerNullableInner