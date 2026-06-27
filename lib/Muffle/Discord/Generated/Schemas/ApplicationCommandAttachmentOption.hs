{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandAttachmentOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandAttachmentOption = ApplicationCommandAttachmentOption
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandAttachmentOptionDescriptionLocalizationsNullableInner
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandAttachmentOptionNameLocalizationsNullableInner
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandAttachmentOption where
    parseJSON = withObject "ApplicationCommandAttachmentOption" $ \o ->
        ApplicationCommandAttachmentOption <$>
            o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "required"
            <*> o .: "type"

newtype ApplicationCommandAttachmentOptionDescriptionLocalizationsNullableInner = ApplicationCommandAttachmentOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandAttachmentOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandAttachmentOptionDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandAttachmentOptionDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandAttachmentOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandAttachmentOptionDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandAttachmentOptionDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandAttachmentOptionDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandAttachmentOptionDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandAttachmentOptionNameLocalizationsNullableInner = ApplicationCommandAttachmentOptionNameLocalizationsNullableInner (Maybe ApplicationCommandAttachmentOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandAttachmentOptionNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandAttachmentOptionNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandAttachmentOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandAttachmentOptionNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandAttachmentOptionNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandAttachmentOptionNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandAttachmentOptionNameLocalizationsNullableInnerNullableInner