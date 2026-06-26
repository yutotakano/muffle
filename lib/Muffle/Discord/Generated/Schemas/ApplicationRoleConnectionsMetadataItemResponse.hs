{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationRoleConnectionsMetadataItemResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
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
newtype ApplicationRoleConnectionsMetadataItemResponseDescriptionLocalizationsNullableInner = ApplicationRoleConnectionsMetadataItemResponseDescriptionLocalizationsNullableInner (Maybe ApplicationRoleConnectionsMetadataItemResponseDescriptionLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationRoleConnectionsMetadataItemResponseDescriptionLocalizationsNullableInnerNullableInner = ApplicationRoleConnectionsMetadataItemResponseDescriptionLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ApplicationRoleConnectionsMetadataItemResponseNameLocalizationsNullableInner = ApplicationRoleConnectionsMetadataItemResponseNameLocalizationsNullableInner (Maybe ApplicationRoleConnectionsMetadataItemResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationRoleConnectionsMetadataItemResponseNameLocalizationsNullableInnerNullableInner = ApplicationRoleConnectionsMetadataItemResponseNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
