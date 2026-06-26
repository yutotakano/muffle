{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandPermission where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ApplicationCommandPermissionType

data ApplicationCommandPermission = ApplicationCommandPermission
    { id :: SnowflakeType
    , permission :: Bool
    , type' :: ApplicationCommandPermissionType
    }
    deriving (Show, Eq, Generic)
