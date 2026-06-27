{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandStringOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionStringChoiceResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandStringOptionResponse = ApplicationCommandStringOptionResponse
    { autocomplete :: Maybe Bool
    , choices :: Maybe [ApplicationCommandOptionStringChoiceResponse]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandStringOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , maxLength :: Maybe Int32
    , minLength :: Maybe Int32
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandStringOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandStringOptionResponse where
    parseJSON = withObject "ApplicationCommandStringOptionResponse" $ \o ->
        ApplicationCommandStringOptionResponse <$>
            o .: "autocomplete"
            <*> o .: "choices"
            <*> o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "description_localized"
            <*> o .: "max_length"
            <*> o .: "min_length"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "name_localized"
            <*> o .: "required"
            <*> o .: "type"

newtype ApplicationCommandStringOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandStringOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandStringOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandStringOptionResponseDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandStringOptionResponseDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandStringOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandStringOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandStringOptionResponseDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandStringOptionResponseDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandStringOptionResponseDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandStringOptionResponseNameLocalizationsNullableInner = ApplicationCommandStringOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandStringOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandStringOptionResponseNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandStringOptionResponseNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandStringOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandStringOptionResponseNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandStringOptionResponseNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandStringOptionResponseNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandStringOptionResponseNameLocalizationsNullableInnerNullableInner