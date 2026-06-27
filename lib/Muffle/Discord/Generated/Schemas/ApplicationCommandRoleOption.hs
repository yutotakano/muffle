{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandRoleOption where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandRoleOption = ApplicationCommandRoleOption
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandRoleOptionDescriptionLocalizationsNullableInner
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandRoleOptionNameLocalizationsNullableInner
    , required :: Maybe (Maybe Bool)
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandRoleOption where
    parseJSON = withObject "ApplicationCommandRoleOption" $ \o ->
        ApplicationCommandRoleOption <$>
            o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "required"
            <*> o .: "type"

newtype ApplicationCommandRoleOptionDescriptionLocalizationsNullableInner = ApplicationCommandRoleOptionDescriptionLocalizationsNullableInner (Maybe ApplicationCommandRoleOptionDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandRoleOptionDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandRoleOptionDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandRoleOptionDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandRoleOptionDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandRoleOptionDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandRoleOptionDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandRoleOptionDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandRoleOptionNameLocalizationsNullableInner = ApplicationCommandRoleOptionNameLocalizationsNullableInner (Maybe ApplicationCommandRoleOptionNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandRoleOptionNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandRoleOptionNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandRoleOptionNameLocalizationsNullableInnerNullableInner = ApplicationCommandRoleOptionNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandRoleOptionNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandRoleOptionNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandRoleOptionNameLocalizationsNullableInnerNullableInner