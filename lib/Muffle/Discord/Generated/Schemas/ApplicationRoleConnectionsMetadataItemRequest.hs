{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationRoleConnectionsMetadataItemRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
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
newtype ApplicationRoleConnectionsMetadataItemRequestDescriptionLocalizationsNullableInner = ApplicationRoleConnectionsMetadataItemRequestDescriptionLocalizationsNullableInner (Maybe ApplicationRoleConnectionsMetadataItemRequestDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationRoleConnectionsMetadataItemRequestDescriptionLocalizationsNullableInnerNullableInner = ApplicationRoleConnectionsMetadataItemRequestDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationRoleConnectionsMetadataItemRequestNameLocalizationsNullableInner = ApplicationRoleConnectionsMetadataItemRequestNameLocalizationsNullableInner (Maybe ApplicationRoleConnectionsMetadataItemRequestNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationRoleConnectionsMetadataItemRequestNameLocalizationsNullableInnerNullableInner = ApplicationRoleConnectionsMetadataItemRequestNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
