{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandStringOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionStringChoice
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandStringOption = ApplicationCommandStringOption
    { autocomplete :: Maybe (Maybe Bool)
    , choices :: Maybe [ApplicationCommandOptionStringChoice]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandStringOptionDescriptionLocalizationsNullableInner
    , maxLength :: Maybe (Maybe Integer)
    , minLength :: Maybe (Maybe Integer)
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandStringOptionNameLocalizationsNullableInner
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandStringOption where
    parseJSON = withObject "ApplicationCommandStringOption" $ \o ->
        ApplicationCommandStringOption <$>
            o .: "autocomplete"
            <*> o .: "choices"
            <*> o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "max_length"
            <*> o .: "min_length"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "required"
            <*> o .: "type"

newtype ApplicationCommandStringOptionDescriptionLocalizationsNullableInner = ApplicationCommandStringOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandStringOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandStringOptionDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandStringOptionDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandStringOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandStringOptionDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandStringOptionDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandStringOptionDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandStringOptionDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandStringOptionNameLocalizationsNullableInner = ApplicationCommandStringOptionNameLocalizationsNullableInner (Maybe ApplicationCommandStringOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandStringOptionNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandStringOptionNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandStringOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandStringOptionNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandStringOptionNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandStringOptionNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandStringOptionNameLocalizationsNullableInnerNullableInner