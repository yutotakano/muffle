{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ThreadSearchResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageResponse
import Muffle.Discord.Generated.Schemas.ThreadMemberResponse
import Muffle.Discord.Generated.Schemas.ThreadResponse

data ThreadSearchResponse = ThreadSearchResponse
    { firstMessages :: Maybe [MessageResponse]
    , hasMore :: Bool
    , members :: [ThreadMemberResponse]
    , threads :: [ThreadResponse]
    , totalResults :: Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON ThreadSearchResponse where
    parseJSON = withObject "ThreadSearchResponse" $ \o ->
        ThreadSearchResponse <$>
            o .: "first_messages"
            <*> o .: "has_more"
            <*> o .: "members"
            <*> o .: "threads"
            <*> o .: "total_results"