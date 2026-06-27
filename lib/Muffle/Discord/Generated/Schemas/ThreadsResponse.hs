{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ThreadsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
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

instance FromJSON ThreadsResponse where
    parseJSON = withObject "ThreadsResponse" $ \o ->
        ThreadsResponse <$>
            o .: "first_messages"
            <*> o .: "has_more"
            <*> o .: "members"
            <*> o .: "threads"