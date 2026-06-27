{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandMentionableOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandMentionableOptionResponse = ApplicationCommandMentionableOptionResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandMentionableOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandMentionableOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandMentionableOptionResponse where
    parseJSON = withObject "ApplicationCommandMentionableOptionResponse" $ \o ->
        ApplicationCommandMentionableOptionResponse <$>
            o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "description_localized"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "name_localized"
            <*> o .: "required"
            <*> o .: "type"

newtype ApplicationCommandMentionableOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandMentionableOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandMentionableOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandMentionableOptionResponseDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandMentionableOptionResponseDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandMentionableOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandMentionableOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandMentionableOptionResponseDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandMentionableOptionResponseDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandMentionableOptionResponseDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandMentionableOptionResponseNameLocalizationsNullableInner = ApplicationCommandMentionableOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandMentionableOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandMentionableOptionResponseNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandMentionableOptionResponseNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandMentionableOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandMentionableOptionResponseNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandMentionableOptionResponseNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandMentionableOptionResponseNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandMentionableOptionResponseNameLocalizationsNullableInnerNullableInner