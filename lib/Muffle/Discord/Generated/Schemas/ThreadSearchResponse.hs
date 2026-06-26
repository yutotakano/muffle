{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ThreadSearchResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageResponse
import Muffle.Discord.Generated.Schemas.ThreadMemberResponse
import Muffle.Discord.Generated.Schemas.ThreadResponse

data ThreadSearchResponse = ThreadSearchResponse
    { firstMessages :: [MessageResponse]
    , hasMore :: Bool
    , members :: [ThreadMemberResponse]
    , threads :: [ThreadResponse]
    , totalResults :: Int32
    }
    deriving (Show, Eq, Generic)
