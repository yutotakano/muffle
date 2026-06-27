{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandBooleanOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandBooleanOptionResponse = ApplicationCommandBooleanOptionResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandBooleanOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandBooleanOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandBooleanOptionResponse where
    parseJSON = withObject "ApplicationCommandBooleanOptionResponse" $ \o ->
        ApplicationCommandBooleanOptionResponse <$>
            o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "description_localized"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "name_localized"
            <*> o .: "required"
            <*> o .: "type"

newtype ApplicationCommandBooleanOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandBooleanOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandBooleanOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandBooleanOptionResponseDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandBooleanOptionResponseDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandBooleanOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandBooleanOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandBooleanOptionResponseDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandBooleanOptionResponseDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandBooleanOptionResponseDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandBooleanOptionResponseNameLocalizationsNullableInner = ApplicationCommandBooleanOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandBooleanOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandBooleanOptionResponseNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandBooleanOptionResponseNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandBooleanOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandBooleanOptionResponseNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandBooleanOptionResponseNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandBooleanOptionResponseNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandBooleanOptionResponseNameLocalizationsNullableInnerNullableInner