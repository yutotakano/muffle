{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.TargetUsersJobStatusResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UInt32Type
import Muffle.Discord.Generated.Schemas.TargetUsersJobStatusTypes

data TargetUsersJobStatusResponse = TargetUsersJobStatusResponse
    { completedAt :: Maybe String
    , createdAt :: Maybe String
    , errorMessage :: Maybe String
    , processedUsers :: UInt32Type
    , status :: TargetUsersJobStatusTypes
    , totalUsers :: UInt32Type
    }
    deriving (Show, Eq, Generic)
