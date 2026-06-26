{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UserPrimaryGuildResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data UserPrimaryGuildResponse = UserPrimaryGuildResponse
    { badge :: Maybe String
    , identityEnabled :: Maybe Bool
    , identityGuildId :: Maybe SnowflakeType
    , tag :: Maybe String
    }
    deriving (Show, Eq, Generic)
