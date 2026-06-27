{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SearchIndexNotReadyResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data SearchIndexNotReadyResponse = SearchIndexNotReadyResponse
    { code :: Int32
    , documentsIndexed :: Int32
    , message :: String
    , retryAfter :: Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON SearchIndexNotReadyResponse where
    parseJSON = withObject "SearchIndexNotReadyResponse" $ \o ->
        SearchIndexNotReadyResponse <$>
            o .: "code"
            <*> o .: "documents_indexed"
            <*> o .: "message"
            <*> o .: "retry_after"