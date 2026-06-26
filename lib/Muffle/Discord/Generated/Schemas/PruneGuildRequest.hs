{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PruneGuildRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data PruneGuildRequest = PruneGuildRequest
    { computePruneCount :: Maybe Bool
    , days :: Maybe Integer
    , includeRoles :: Maybe PruneGuildRequestIncludeRolesNullableInner
    }
    deriving (Show, Eq, Generic)
data PruneGuildRequestIncludeRolesNullableInner = PruneGuildRequestIncludeRolesNullableInner0 String | PruneGuildRequestIncludeRolesNullableInner1 [SnowflakeType]
    deriving (Show, Eq, Generic)
