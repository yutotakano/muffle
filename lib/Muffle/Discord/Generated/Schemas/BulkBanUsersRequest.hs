{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.BulkBanUsersRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data BulkBanUsersRequest = BulkBanUsersRequest
    { deleteMessageSeconds :: Maybe (Maybe Integer)
    , userIds :: [SnowflakeType]
    }
    deriving (Show, Eq, Generic)
