{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UpdateRolePositionsRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data UpdateRolePositionsRequest = UpdateRolePositionsRequest
    { id :: Maybe SnowflakeType
    , position :: Maybe Int32
    }
    deriving (Show, Eq, Generic)
