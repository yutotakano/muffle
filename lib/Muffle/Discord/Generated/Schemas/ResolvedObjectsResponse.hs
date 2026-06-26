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
data ResolvedObjectsResponseChannelsNullableInner = ResolvedObjectsResponseChannelsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ResolvedObjectsResponseMembersNullableInner = ResolvedObjectsResponseMembersNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ResolvedObjectsResponseRolesNullableInner = ResolvedObjectsResponseRolesNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
data ResolvedObjectsResponseUsersNullableInner = ResolvedObjectsResponseUsersNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
