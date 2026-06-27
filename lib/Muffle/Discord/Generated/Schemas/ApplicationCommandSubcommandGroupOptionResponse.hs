{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandGroupOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandSubcommandGroupOptionResponse = ApplicationCommandSubcommandGroupOptionResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandSubcommandGroupOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandSubcommandGroupOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , options :: Maybe [ApplicationCommandSubcommandOptionResponse]
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandGroupOptionResponse where
    parseJSON = withObject "ApplicationCommandSubcommandGroupOptionResponse" $ \o ->
        ApplicationCommandSubcommandGroupOptionResponse <$>
            o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "description_localized"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "name_localized"
            <*> o .: "options"
            <*> o .: "required"
            <*> o .: "type"

newtype ApplicationCommandSubcommandGroupOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandSubcommandGroupOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandSubcommandGroupOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandGroupOptionResponseDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandSubcommandGroupOptionResponseDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandSubcommandGroupOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandSubcommandGroupOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandGroupOptionResponseDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandSubcommandGroupOptionResponseDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandSubcommandGroupOptionResponseDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandSubcommandGroupOptionResponseNameLocalizationsNullableInner = ApplicationCommandSubcommandGroupOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandSubcommandGroupOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandGroupOptionResponseNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandSubcommandGroupOptionResponseNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandSubcommandGroupOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandSubcommandGroupOptionResponseNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandGroupOptionResponseNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandSubcommandGroupOptionResponseNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandSubcommandGroupOptionResponseNameLocalizationsNullableInnerNullableInner