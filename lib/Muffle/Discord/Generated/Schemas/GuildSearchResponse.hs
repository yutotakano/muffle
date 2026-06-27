{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildSearchResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
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

instance FromJSON GuildSearchResponse where
    parseJSON = withObject "GuildSearchResponse" $ \o ->
        GuildSearchResponse <$>
            o .: "documents_indexed"
            <*> o .: "doing_deep_historical_index"
            <*> o .: "members"
            <*> o .: "messages"
            <*> o .: "threads"
            <*> o .: "total_results"