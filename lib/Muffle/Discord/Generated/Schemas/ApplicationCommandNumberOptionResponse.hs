{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandNumberOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionNumberChoiceResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandNumberOptionResponse = ApplicationCommandNumberOptionResponse
    { autocomplete :: Maybe Bool
    , choices :: Maybe [ApplicationCommandOptionNumberChoiceResponse]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandNumberOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , maxValue :: Maybe Integer
    , minValue :: Maybe Integer
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandNumberOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandNumberOptionResponse where
    parseJSON = withObject "ApplicationCommandNumberOptionResponse" $ \o ->
        ApplicationCommandNumberOptionResponse <$>
            o .: "autocomplete"
            <*> o .: "choices"
            <*> o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "description_localized"
            <*> o .: "max_value"
            <*> o .: "min_value"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "name_localized"
            <*> o .: "required"
            <*> o .: "type"

newtype ApplicationCommandNumberOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandNumberOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandNumberOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandNumberOptionResponseDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandNumberOptionResponseDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandNumberOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandNumberOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandNumberOptionResponseDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandNumberOptionResponseDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandNumberOptionResponseDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandNumberOptionResponseNameLocalizationsNullableInner = ApplicationCommandNumberOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandNumberOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandNumberOptionResponseNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandNumberOptionResponseNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandNumberOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandNumberOptionResponseNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandNumberOptionResponseNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandNumberOptionResponseNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandNumberOptionResponseNameLocalizationsNullableInnerNullableInner