{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ThreadSortingMode where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data ThreadSortingMode = ThreadSortingModeRelevance | ThreadSortingModeCreationTime | ThreadSortingModeLastMessageTime | ThreadSortingModeArchiveTime
    deriving (Show, Eq, Generic)

instance FromJSON ThreadSortingMode where
    parseJSON v = case v of
        "relevance" -> pure ThreadSortingModeRelevance
        "creation_time" -> pure ThreadSortingModeCreationTime
        "last_message_time" -> pure ThreadSortingModeLastMessageTime
        "archive_time" -> pure ThreadSortingModeArchiveTime
        _ -> fail "Expected one of the constants in the oneOf schema"