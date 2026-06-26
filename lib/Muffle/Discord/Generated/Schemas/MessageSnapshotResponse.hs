{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageSnapshotResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MinimalContentMessageResponse

data MessageSnapshotResponse = MessageSnapshotResponse
    { message :: MinimalContentMessageResponse
    }
    deriving (Show, Eq, Generic)
