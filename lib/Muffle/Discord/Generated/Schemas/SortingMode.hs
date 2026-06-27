{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SortingMode where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data SortingMode = SortingModeRelevance | SortingModeTimestamp
    deriving (Show, Eq, Generic)

instance FromJSON SortingMode where
    parseJSON v = case v of
        "relevance" -> pure SortingModeRelevance
        "timestamp" -> pure SortingModeTimestamp
        _ -> fail "Expected one of the constants in the oneOf schema"