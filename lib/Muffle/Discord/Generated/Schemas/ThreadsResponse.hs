{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ThreadsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageResponse
import Muffle.Discord.Generated.Schemas.ThreadMemberResponse
import Muffle.Discord.Generated.Schemas.ThreadResponse

data ThreadsResponse = ThreadsResponse
    { firstMessages :: Maybe [MessageResponse]
    , hasMore :: Bool
    , members :: [ThreadMemberResponse]
    , threads :: [ThreadResponse]
    }
    deriving (Show, Eq, Generic)
