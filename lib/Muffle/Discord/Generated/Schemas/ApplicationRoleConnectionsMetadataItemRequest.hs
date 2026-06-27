{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationRoleConnectionsMetadataItemRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MetadataItemTypes

data ApplicationRoleConnectionsMetadataItemRequest = ApplicationRoleConnectionsMetadataItemRequest
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationRoleConnectionsMetadataItemRequestDescriptionLocalizationsNullableInner
    , key :: String
    , name :: String
    , nameLocalizations :: Maybe ApplicationRoleConnectionsMetadataItemRequestNameLocalizationsNullableInner
    , type' :: MetadataItemTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationRoleConnectionsMetadataItemRequest where
    parseJSON = withObject "ApplicationRoleConnectionsMetadataItemRequest" $ \o ->
        ApplicationRoleConnectionsMetadataItemRequest <$>
            o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "key"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "type"

newtype ApplicationRoleConnectionsMetadataItemRequestDescriptionLocalizationsNullableInner = ApplicationRoleConnectionsMetadataItemRequestDescriptionLocalizationsNullableInner (Maybe ApplicationRoleConnectionsMetadataItemRequestDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationRoleConnectionsMetadataItemRequestDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationRoleConnectionsMetadataItemRequestDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationRoleConnectionsMetadataItemRequestDescriptionLocalizationsNullableInnerNullableInner = ApplicationRoleConnectionsMetadataItemRequestDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationRoleConnectionsMetadataItemRequestDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationRoleConnectionsMetadataItemRequestDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationRoleConnectionsMetadataItemRequestDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationRoleConnectionsMetadataItemRequestNameLocalizationsNullableInner = ApplicationRoleConnectionsMetadataItemRequestNameLocalizationsNullableInner (Maybe ApplicationRoleConnectionsMetadataItemRequestNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationRoleConnectionsMetadataItemRequestNameLocalizationsNullableInner where
    parseJSON v = ApplicationRoleConnectionsMetadataItemRequestNameLocalizationsNullableInner <$> parseJSON v

data ApplicationRoleConnectionsMetadataItemRequestNameLocalizationsNullableInnerNullableInner = ApplicationRoleConnectionsMetadataItemRequestNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationRoleConnectionsMetadataItemRequestNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationRoleConnectionsMetadataItemRequestNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationRoleConnectionsMetadataItemRequestNameLocalizationsNullableInnerNullableInner