{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandGroupOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandSubcommandGroupOption = ApplicationCommandSubcommandGroupOption
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandSubcommandGroupOptionDescriptionLocalizationsNullableInner
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandSubcommandGroupOptionNameLocalizationsNullableInner
    , options :: Maybe [ApplicationCommandSubcommandOption]
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandGroupOption where
    parseJSON = withObject "ApplicationCommandSubcommandGroupOption" $ \o ->
        ApplicationCommandSubcommandGroupOption <$>
            o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "options"
            <*> o .: "required"
            <*> o .: "type"

newtype ApplicationCommandSubcommandGroupOptionDescriptionLocalizationsNullableInner = ApplicationCommandSubcommandGroupOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandSubcommandGroupOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandGroupOptionDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandSubcommandGroupOptionDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandSubcommandGroupOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandSubcommandGroupOptionDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandGroupOptionDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandSubcommandGroupOptionDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandSubcommandGroupOptionDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandSubcommandGroupOptionNameLocalizationsNullableInner = ApplicationCommandSubcommandGroupOptionNameLocalizationsNullableInner (Maybe ApplicationCommandSubcommandGroupOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandGroupOptionNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandSubcommandGroupOptionNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandSubcommandGroupOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandSubcommandGroupOptionNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandGroupOptionNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandSubcommandGroupOptionNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandSubcommandGroupOptionNameLocalizationsNullableInnerNullableInner