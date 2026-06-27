{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandUserOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandUserOption = ApplicationCommandUserOption
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandUserOptionDescriptionLocalizationsNullableInner
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandUserOptionNameLocalizationsNullableInner
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandUserOption where
    parseJSON = withObject "ApplicationCommandUserOption" $ \o ->
        ApplicationCommandUserOption <$>
            o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "required"
            <*> o .: "type"

newtype ApplicationCommandUserOptionDescriptionLocalizationsNullableInner = ApplicationCommandUserOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandUserOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandUserOptionDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandUserOptionDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandUserOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandUserOptionDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandUserOptionDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandUserOptionDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandUserOptionDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandUserOptionNameLocalizationsNullableInner = ApplicationCommandUserOptionNameLocalizationsNullableInner (Maybe ApplicationCommandUserOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandUserOptionNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandUserOptionNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandUserOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandUserOptionNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandUserOptionNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandUserOptionNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandUserOptionNameLocalizationsNullableInnerNullableInner