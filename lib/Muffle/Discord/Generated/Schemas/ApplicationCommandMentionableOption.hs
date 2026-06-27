{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandMentionableOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandMentionableOption = ApplicationCommandMentionableOption
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandMentionableOptionDescriptionLocalizationsNullableInner
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandMentionableOptionNameLocalizationsNullableInner
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandMentionableOption where
    parseJSON = withObject "ApplicationCommandMentionableOption" $ \o ->
        ApplicationCommandMentionableOption <$>
            o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "required"
            <*> o .: "type"

newtype ApplicationCommandMentionableOptionDescriptionLocalizationsNullableInner = ApplicationCommandMentionableOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandMentionableOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandMentionableOptionDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandMentionableOptionDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandMentionableOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandMentionableOptionDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandMentionableOptionDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandMentionableOptionDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandMentionableOptionDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandMentionableOptionNameLocalizationsNullableInner = ApplicationCommandMentionableOptionNameLocalizationsNullableInner (Maybe ApplicationCommandMentionableOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandMentionableOptionNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandMentionableOptionNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandMentionableOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandMentionableOptionNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandMentionableOptionNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandMentionableOptionNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandMentionableOptionNameLocalizationsNullableInnerNullableInner