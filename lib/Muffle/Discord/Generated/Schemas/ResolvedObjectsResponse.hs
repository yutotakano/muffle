{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ResolvedObjectsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data ResolvedObjectsResponse = ResolvedObjectsResponse
    { channels :: Maybe ResolvedObjectsResponseChannelsNullableInner
    , members :: Maybe ResolvedObjectsResponseMembersNullableInner
    , roles :: Maybe ResolvedObjectsResponseRolesNullableInner
    , users :: Maybe ResolvedObjectsResponseUsersNullableInner
    }
    deriving (Show, Eq, Generic)
newtype ResolvedObjectsResponseChannelsNullableInner = ResolvedObjectsResponseChannelsNullableInner (Maybe ResolvedObjectsResponseChannelsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ResolvedObjectsResponseChannelsNullableInnerNullableInner = ResolvedObjectsResponseChannelsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ResolvedObjectsResponseMembersNullableInner = ResolvedObjectsResponseMembersNullableInner (Maybe ResolvedObjectsResponseMembersNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ResolvedObjectsResponseMembersNullableInnerNullableInner = ResolvedObjectsResponseMembersNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ResolvedObjectsResponseRolesNullableInner = ResolvedObjectsResponseRolesNullableInner (Maybe ResolvedObjectsResponseRolesNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ResolvedObjectsResponseRolesNullableInnerNullableInner = ResolvedObjectsResponseRolesNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
newtype ResolvedObjectsResponseUsersNullableInner = ResolvedObjectsResponseUsersNullableInner (Maybe ResolvedObjectsResponseUsersNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ResolvedObjectsResponseUsersNullableInnerNullableInner = ResolvedObjectsResponseUsersNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
