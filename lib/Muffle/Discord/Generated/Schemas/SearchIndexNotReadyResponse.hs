{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.SearchIndexNotReadyResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data SearchIndexNotReadyResponse = SearchIndexNotReadyResponse
    { code :: Int32
    , documentsIndexed :: Int32
    , message :: String
    , retryAfter :: Int32
    }
    deriving (Show, Eq, Generic)
