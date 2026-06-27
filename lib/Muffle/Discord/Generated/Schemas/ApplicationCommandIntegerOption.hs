{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandIntegerOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionIntegerChoice
import Muffle.Discord.Generated.Schemas.Int53Type
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandIntegerOption = ApplicationCommandIntegerOption
    { autocomplete :: Maybe (Maybe Bool)
    , choices :: Maybe [ApplicationCommandOptionIntegerChoice]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandIntegerOptionDescriptionLocalizationsNullableInner
    , maxValue :: Maybe (Maybe Int53Type)
    , minValue :: Maybe (Maybe Int53Type)
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandIntegerOptionNameLocalizationsNullableInner
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandIntegerOption where
    parseJSON = withObject "ApplicationCommandIntegerOption" $ \o ->
        ApplicationCommandIntegerOption <$>
            o .: "autocomplete"
            <*> o .: "choices"
            <*> o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "max_value"
            <*> o .: "min_value"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "required"
            <*> o .: "type"

newtype ApplicationCommandIntegerOptionDescriptionLocalizationsNullableInner = ApplicationCommandIntegerOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandIntegerOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandIntegerOptionDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandIntegerOptionDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandIntegerOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandIntegerOptionDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandIntegerOptionDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandIntegerOptionDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandIntegerOptionDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandIntegerOptionNameLocalizationsNullableInner = ApplicationCommandIntegerOptionNameLocalizationsNullableInner (Maybe ApplicationCommandIntegerOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandIntegerOptionNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandIntegerOptionNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandIntegerOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandIntegerOptionNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandIntegerOptionNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandIntegerOptionNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandIntegerOptionNameLocalizationsNullableInnerNullableInner