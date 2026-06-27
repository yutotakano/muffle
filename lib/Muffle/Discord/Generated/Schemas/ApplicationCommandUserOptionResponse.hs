{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandUserOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandUserOptionResponse = ApplicationCommandUserOptionResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandUserOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandUserOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandUserOptionResponse where
    parseJSON = withObject "ApplicationCommandUserOptionResponse" $ \o ->
        ApplicationCommandUserOptionResponse <$>
            o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "description_localized"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "name_localized"
            <*> o .: "required"
            <*> o .: "type"

newtype ApplicationCommandUserOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandUserOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandUserOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandUserOptionResponseDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandUserOptionResponseDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandUserOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandUserOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandUserOptionResponseDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandUserOptionResponseDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandUserOptionResponseDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandUserOptionResponseNameLocalizationsNullableInner = ApplicationCommandUserOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandUserOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandUserOptionResponseNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandUserOptionResponseNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandUserOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandUserOptionResponseNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandUserOptionResponseNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandUserOptionResponseNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandUserOptionResponseNameLocalizationsNullableInnerNullableInner