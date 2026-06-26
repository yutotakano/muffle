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
data ApplicationRoleConnectionsMetadataItemRequestDescriptionLocalizationsNullableInner = ApplicationRoleConnectionsMetadataItemRequestDescriptionLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ApplicationRoleConnectionsMetadataItemRequestNameLocalizationsNullableInner = ApplicationRoleConnectionsMetadataItemRequestNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
