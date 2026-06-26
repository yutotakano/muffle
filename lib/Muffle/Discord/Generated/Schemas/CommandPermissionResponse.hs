{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CommandPermissionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ApplicationCommandPermissionType

data CommandPermissionResponse = CommandPermissionResponse
    { id :: SnowflakeType
    , permission :: Bool
    , type' :: ApplicationCommandPermissionType
    }
    deriving (Show, Eq, Generic)
