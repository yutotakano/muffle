{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationRoleConnectionsMetadataItemResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MetadataItemTypes

data ApplicationRoleConnectionsMetadataItemResponse = ApplicationRoleConnectionsMetadataItemResponse
    { description :: String
    , descriptionLocalizations :: Maybe ApplicationRoleConnectionsMetadataItemResponseDescriptionLocalizationsNullableInner
    , key :: String
    , name :: String
    , nameLocalizations :: Maybe ApplicationRoleConnectionsMetadataItemResponseNameLocalizationsNullableInner
    , type' :: MetadataItemTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationRoleConnectionsMetadataItemResponse where
    parseJSON = withObject "ApplicationRoleConnectionsMetadataItemResponse" $ \o ->
        ApplicationRoleConnectionsMetadataItemResponse <$>
            o .: "description"
            <*> o .: "description_localizations"
            <*> o .: "key"
            <*> o .: "name"
            <*> o .: "name_localizations"
            <*> o .: "type"

newtype ApplicationRoleConnectionsMetadataItemResponseDescriptionLocalizationsNullableInner = ApplicationRoleConnectionsMetadataItemResponseDescriptionLocalizationsNullableInner (Maybe ApplicationRoleConnectionsMetadataItemResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationRoleConnectionsMetadataItemResponseDescriptionLocalizationsNullableInner where
    parseJSON v = ApplicationRoleConnectionsMetadataItemResponseDescriptionLocalizationsNullableInner <$> parseJSON v

data ApplicationRoleConnectionsMetadataItemResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationRoleConnectionsMetadataItemResponseDescriptionLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationRoleConnectionsMetadataItemResponseDescriptionLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationRoleConnectionsMetadataItemResponseDescriptionLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationRoleConnectionsMetadataItemResponseDescriptionLocalizationsNullableInnerNullableInner

newtype ApplicationRoleConnectionsMetadataItemResponseNameLocalizationsNullableInner = ApplicationRoleConnectionsMetadataItemResponseNameLocalizationsNullableInner (Maybe ApplicationRoleConnectionsMetadataItemResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationRoleConnectionsMetadataItemResponseNameLocalizationsNullableInner where
    parseJSON v = ApplicationRoleConnectionsMetadataItemResponseNameLocalizationsNullableInner <$> parseJSON v

data ApplicationRoleConnectionsMetadataItemResponseNameLocalizationsNullableInnerNullableInner = ApplicationRoleConnectionsMetadataItemResponseNameLocalizationsNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationRoleConnectionsMetadataItemResponseNameLocalizationsNullableInnerNullableInner where
    parseJSON = withObject "ApplicationRoleConnectionsMetadataItemResponseNameLocalizationsNullableInnerNullableInner" $ \_ -> pure ApplicationRoleConnectionsMetadataItemResponseNameLocalizationsNullableInnerNullableInner