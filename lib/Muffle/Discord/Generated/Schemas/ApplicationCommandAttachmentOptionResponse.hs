{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandAttachmentOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandAttachmentOptionResponse = ApplicationCommandAttachmentOptionResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandAttachmentOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandAttachmentOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandAttachmentOptionResponse where
    parseJSON = withObject "ApplicationCommandAttachmentOptionResponse" $ \o ->
        ApplicationCommandAttachmentOptionResponse <$>
            o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "description_localized"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "name_localized"
            <*> o .: "required"
            <*> o .: "type"

newtype ApplicationCommandAttachmentOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandAttachmentOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandAttachmentOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandAttachmentOptionResponseDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandAttachmentOptionResponseDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandAttachmentOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandAttachmentOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandAttachmentOptionResponseDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandAttachmentOptionResponseDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandAttachmentOptionResponseDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandAttachmentOptionResponseNameLocalizationsNullableInner = ApplicationCommandAttachmentOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandAttachmentOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandAttachmentOptionResponseNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandAttachmentOptionResponseNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandAttachmentOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandAttachmentOptionResponseNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandAttachmentOptionResponseNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandAttachmentOptionResponseNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandAttachmentOptionResponseNameLocalizationsNullableInnerNullableInner