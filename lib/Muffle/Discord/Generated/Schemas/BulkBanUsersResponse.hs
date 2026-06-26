{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.BulkBanUsersResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data BulkBanUsersResponse = BulkBanUsersResponse
    { bannedUsers :: [SnowflakeType]
    , failedUsers :: [SnowflakeType]
    }
    deriving (Show, Eq, Generic)
