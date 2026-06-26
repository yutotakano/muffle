{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildSearchResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ThreadMemberResponse
import Muffle.Discord.Generated.Schemas.SearchMessageResponse
import Muffle.Discord.Generated.Schemas.ThreadResponse

data GuildSearchResponse = GuildSearchResponse
    { documentsIndexed :: Maybe (Maybe Int32)
    , doingDeepHistoricalIndex :: Bool
    , members :: Maybe [ThreadMemberResponse]
    , messages :: [[SearchMessageResponse]]
    , threads :: Maybe [ThreadResponse]
    , totalResults :: Int32
    }
    deriving (Show, Eq, Generic)
