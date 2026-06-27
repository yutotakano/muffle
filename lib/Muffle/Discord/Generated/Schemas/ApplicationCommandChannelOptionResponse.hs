{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandChannelOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ChannelTypes
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandChannelOptionResponse = ApplicationCommandChannelOptionResponse
    { channelTypes :: Maybe [ChannelTypes]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandChannelOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandChannelOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandChannelOptionResponse where
    parseJSON = withObject "ApplicationCommandChannelOptionResponse" $ \o ->
        ApplicationCommandChannelOptionResponse <$>
            o .: "channel_types"
            <*> o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "description_localized"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "name_localized"
            <*> o .: "required"
            <*> o .: "type"

newtype ApplicationCommandChannelOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandChannelOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandChannelOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandChannelOptionResponseDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandChannelOptionResponseDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandChannelOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandChannelOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandChannelOptionResponseDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandChannelOptionResponseDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandChannelOptionResponseDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandChannelOptionResponseNameLocalizationsNullableInner = ApplicationCommandChannelOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandChannelOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandChannelOptionResponseNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandChannelOptionResponseNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandChannelOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandChannelOptionResponseNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandChannelOptionResponseNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandChannelOptionResponseNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandChannelOptionResponseNameLocalizationsNullableInnerNullableInner