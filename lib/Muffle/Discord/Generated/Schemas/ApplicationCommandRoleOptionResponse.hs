{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandRoleOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionType

data ApplicationCommandRoleOptionResponse = ApplicationCommandRoleOptionResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationCommandRoleOptionResponseDescriptionLocalizationsNullableInner
    , descriptionLocalized :: Maybe String
    , name :: String
    , nameLocalizations :: Maybe ApplicationCommandRoleOptionResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , required :: Maybe Bool
    , type' :: ApplicationCommandOptionType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandRoleOptionResponse where
    parseJSON = withObject "ApplicationCommandRoleOptionResponse" $ \o ->
        ApplicationCommandRoleOptionResponse <$>
            o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "description_localized"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "name_localized"
            <*> o .: "required"
            <*> o .: "type"

newtype ApplicationCommandRoleOptionResponseDescriptionLocalizationsNullableInner = ApplicationCommandRoleOptionResponseDescriptionLocalizationsNullableInner (Maybe ApplicationCommandRoleOptionResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandRoleOptionResponseDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationCommandRoleOptionResponseDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandRoleOptionResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationCommandRoleOptionResponseDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandRoleOptionResponseDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandRoleOptionResponseDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandRoleOptionResponseDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationCommandRoleOptionResponseNameLocalizationsNullableInner = ApplicationCommandRoleOptionResponseNameLocalizationsNullableInner (Maybe ApplicationCommandRoleOptionResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandRoleOptionResponseNameLocalizationsNullableInner where
    parseJSON v = ApplicationCommandRoleOptionResponseNameLocalizationsNullableInner <$> parseJSON v

data ApplicationCommandRoleOptionResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandRoleOptionResponseNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandRoleOptionResponseNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationCommandRoleOptionResponseNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationCommandRoleOptionResponseNameLocalizationsNullableInnerNullableInner