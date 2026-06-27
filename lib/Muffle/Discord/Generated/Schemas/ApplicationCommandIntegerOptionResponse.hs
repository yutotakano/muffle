{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandIntegerOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionIntegerChoiceResponse
import Muffle.Discord.Generated.Schemas.Int53Type
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandIntegerOptionResponse = ApplicationCommandIntegerOptionResponse
    { autocomplete :: Maybe Bool
    , choices :: Maybe [ApplicationCommandOptionIntegerChoiceResponse]
    , description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandIntegerOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , maxValue :: Maybe Int53Type
    , minValue :: Maybe Int53Type
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandIntegerOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandIntegerOptionResponse where
    parseJSON = withObject "ApplicationCommandIntegerOptionResponse" $ \o ->
        ApplicationCommandIntegerOptionResponse <$>
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

newtype ApplicationCommandIntegerOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandIntegerOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandIntegerOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandIntegerOptionResponseDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandIntegerOptionResponseDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandIntegerOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandIntegerOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandIntegerOptionResponseDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandIntegerOptionResponseDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandIntegerOptionResponseDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandIntegerOptionResponseNameLocalizationsNullableInner = ApplicationCommandIntegerOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandIntegerOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandIntegerOptionResponseNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandIntegerOptionResponseNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandIntegerOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandIntegerOptionResponseNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandIntegerOptionResponseNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandIntegerOptionResponseNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandIntegerOptionResponseNameLocalizationsNullableInnerNullableInner