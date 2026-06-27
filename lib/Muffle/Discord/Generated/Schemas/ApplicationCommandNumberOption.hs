{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandNumberOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionNumberChoice
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandNumberOption = ApplicationCommandNumberOption
    { autocomplete :: Maybe (Maybe Bool)
    , choices :: Maybe [ApplicationCommandOptionNumberChoice]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandNumberOptionDescriptionLocalizationsNullableInner
    , maxValue :: Maybe (Maybe Integer)
    , minValue :: Maybe (Maybe Integer)
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandNumberOptionNameLocalizationsNullableInner
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandNumberOption where
    parseJSON = withObject "ApplicationCommandNumberOption" $ \o ->
        ApplicationCommandNumberOption <$>
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

newtype ApplicationCommandNumberOptionDescriptionLocalizationsNullableInner = ApplicationCommandNumberOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandNumberOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandNumberOptionDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandNumberOptionDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandNumberOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandNumberOptionDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandNumberOptionDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandNumberOptionDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandNumberOptionDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandNumberOptionNameLocalizationsNullableInner = ApplicationCommandNumberOptionNameLocalizationsNullableInner (Maybe ApplicationCommandNumberOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandNumberOptionNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandNumberOptionNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandNumberOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandNumberOptionNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandNumberOptionNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandNumberOptionNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandNumberOptionNameLocalizationsNullableInnerNullableInner