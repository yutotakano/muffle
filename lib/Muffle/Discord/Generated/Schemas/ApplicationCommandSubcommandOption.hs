{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType
import Muffle.Discord.Generated.Schemas.ApplicationCommandAttachmentOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandBooleanOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandChannelOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandIntegerOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandMentionableOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandNumberOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandRoleOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandStringOption
import Muffle.Discord.Generated.Schemas.ApplicationCommandUserOption

data ApplicationCommandSubcommandOption = ApplicationCommandSubcommandOption
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandSubcommandOptionDescriptionLocalizationsNullableInner
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandSubcommandOptionNameLocalizationsNullableInner
    , options :: Maybe ApplicationCommandSubcommandOptionOptionsNullableInner
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandOption where
    parseJSON = withObject "ApplicationCommandSubcommandOption" $ \o ->
        ApplicationCommandSubcommandOption <$>
            o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "options"
            <*> o .: "required"
            <*> o .: "type"

newtype ApplicationCommandSubcommandOptionDescriptionLocalizationsNullableInner = ApplicationCommandSubcommandOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandSubcommandOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandOptionDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandSubcommandOptionDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandSubcommandOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandSubcommandOptionDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandOptionDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandSubcommandOptionDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandSubcommandOptionDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandSubcommandOptionNameLocalizationsNullableInner = ApplicationCommandSubcommandOptionNameLocalizationsNullableInner (Maybe ApplicationCommandSubcommandOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandOptionNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandSubcommandOptionNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandSubcommandOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandSubcommandOptionNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandOptionNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandSubcommandOptionNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandSubcommandOptionNameLocalizationsNullableInnerNullableInner

newtype ApplicationCommandSubcommandOptionOptionsNullableInner = ApplicationCommandSubcommandOptionOptionsNullableInner [ApplicationCommandSubcommandOptionOptionsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandOptionOptionsNullableInner where
    parseJSON v = ApplicationCommandSubcommandOptionOptionsNullableInner <$> parseJSON v

data ApplicationCommandSubcommandOptionOptionsNullableInnerItem = ApplicationCommandSubcommandOptionOptionsNullableInnerItem0 ApplicationCommandAttachmentOption | ApplicationCommandSubcommandOptionOptionsNullableInnerItem1 ApplicationCommandBooleanOption | ApplicationCommandSubcommandOptionOptionsNullableInnerItem2 ApplicationCommandChannelOption | ApplicationCommandSubcommandOptionOptionsNullableInnerItem3 ApplicationCommandIntegerOption | ApplicationCommandSubcommandOptionOptionsNullableInnerItem4 ApplicationCommandMentionableOption | ApplicationCommandSubcommandOptionOptionsNullableInnerItem5 ApplicationCommandNumberOption | ApplicationCommandSubcommandOptionOptionsNullableInnerItem6 ApplicationCommandRoleOption | ApplicationCommandSubcommandOptionOptionsNullableInnerItem7 ApplicationCommandStringOption | ApplicationCommandSubcommandOptionOptionsNullableInnerItem8 ApplicationCommandUserOption
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandOptionOptionsNullableInnerItem where
    parseJSON v =
        ApplicationCommandSubcommandOptionOptionsNullableInnerItem0 <$> parseJSON v
            <|> ApplicationCommandSubcommandOptionOptionsNullableInnerItem1 <$> parseJSON v
            <|> ApplicationCommandSubcommandOptionOptionsNullableInnerItem2 <$> parseJSON v
            <|> ApplicationCommandSubcommandOptionOptionsNullableInnerItem3 <$> parseJSON v
            <|> ApplicationCommandSubcommandOptionOptionsNullableInnerItem4 <$> parseJSON v
            <|> ApplicationCommandSubcommandOptionOptionsNullableInnerItem5 <$> parseJSON v
            <|> ApplicationCommandSubcommandOptionOptionsNullableInnerItem6 <$> parseJSON v
            <|> ApplicationCommandSubcommandOptionOptionsNullableInnerItem7 <$> parseJSON v
            <|> ApplicationCommandSubcommandOptionOptionsNullableInnerItem8 <$> parseJSON v