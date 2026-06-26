{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PruneGuildRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data PruneGuildRequest = PruneGuildRequest
    { computePruneCount :: Maybe (Maybe Bool)
    , days :: Maybe (Maybe Integer)
    , includeRoles :: Maybe PruneGuildRequestIncludeRolesNullableInner
    }
    deriving (Show, Eq, Generic)
newtype PruneGuildRequestIncludeRolesNullableInner = PruneGuildRequestIncludeRolesNullableInner (Maybe PruneGuildRequestIncludeRolesNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data PruneGuildRequestIncludeRolesNullableInnerNullableInner = PruneGuildRequestIncludeRolesNullableInnerNullableInner0 String | PruneGuildRequestIncludeRolesNullableInnerNullableInner1 [SnowflakeType]
    deriving (Show, Eq, Generic)
