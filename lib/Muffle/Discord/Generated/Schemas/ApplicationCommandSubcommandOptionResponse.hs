{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandSubcommandOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType
import Muffle.Discord.Generated.Schemas.ApplicationCommandAttachmentOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandBooleanOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandChannelOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandIntegerOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandMentionableOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandNumberOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandRoleOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandStringOptionResponse
import Muffle.Discord.Generated.Schemas.ApplicationCommandUserOptionResponse

data ApplicationCommandSubcommandOptionResponse = ApplicationCommandSubcommandOptionResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandSubcommandOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandSubcommandOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , options :: Maybe ApplicationCommandSubcommandOptionResponseOptionsNullableInner
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandOptionResponse where
    parseJSON = withObject "ApplicationCommandSubcommandOptionResponse" $ \o ->
        ApplicationCommandSubcommandOptionResponse <$>
            o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "description_localized"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "name_localized"
            <*> o .: "options"
            <*> o .: "required"
            <*> o .: "type"

newtype ApplicationCommandSubcommandOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandSubcommandOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandSubcommandOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandOptionResponseDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandSubcommandOptionResponseDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandSubcommandOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandSubcommandOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandOptionResponseDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandSubcommandOptionResponseDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandSubcommandOptionResponseDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandSubcommandOptionResponseNameLocalizationsNullableInner = ApplicationCommandSubcommandOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandSubcommandOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandOptionResponseNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandSubcommandOptionResponseNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandSubcommandOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandSubcommandOptionResponseNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandOptionResponseNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandSubcommandOptionResponseNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandSubcommandOptionResponseNameLocalizationsNullableInnerNullableInner

newtype ApplicationCommandSubcommandOptionResponseOptionsNullableInner = ApplicationCommandSubcommandOptionResponseOptionsNullableInner [ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandOptionResponseOptionsNullableInner where
    parseJSON v = ApplicationCommandSubcommandOptionResponseOptionsNullableInner <$> parseJSON v

data ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem = ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem0 ApplicationCommandAttachmentOptionResponse | ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem1 ApplicationCommandBooleanOptionResponse | ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem2 ApplicationCommandChannelOptionResponse | ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem3 ApplicationCommandIntegerOptionResponse | ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem4 ApplicationCommandMentionableOptionResponse | ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem5 ApplicationCommandNumberOptionResponse | ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem6 ApplicationCommandRoleOptionResponse | ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem7 ApplicationCommandStringOptionResponse | ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem8 ApplicationCommandUserOptionResponse
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem where
    parseJSON v =
        ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem0 <$> parseJSON v
            <|> ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem1 <$> parseJSON v
            <|> ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem2 <$> parseJSON v
            <|> ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem3 <$> parseJSON v
            <|> ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem4 <$> parseJSON v
            <|> ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem5 <$> parseJSON v
            <|> ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem6 <$> parseJSON v
            <|> ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem7 <$> parseJSON v
            <|> ApplicationCommandSubcommandOptionResponseOptionsNullableInnerItem8 <$> parseJSON v