{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandBooleanOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandBooleanOption = ApplicationCommandBooleanOption
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandBooleanOptionDescriptionLocalizationsNullableInner
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandBooleanOptionNameLocalizationsNullableInner
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandBooleanOption where
    parseJSON = withObject "ApplicationCommandBooleanOption" $ \o ->
        ApplicationCommandBooleanOption <$>
            o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "required"
            <*> o .: "type"

newtype ApplicationCommandBooleanOptionDescriptionLocalizationsNullableInner = ApplicationCommandBooleanOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandBooleanOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandBooleanOptionDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandBooleanOptionDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandBooleanOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandBooleanOptionDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandBooleanOptionDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandBooleanOptionDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandBooleanOptionDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandBooleanOptionNameLocalizationsNullableInner = ApplicationCommandBooleanOptionNameLocalizationsNullableInner (Maybe ApplicationCommandBooleanOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandBooleanOptionNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandBooleanOptionNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandBooleanOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandBooleanOptionNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandBooleanOptionNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandBooleanOptionNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandBooleanOptionNameLocalizationsNullableInnerNullableInner