{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SortingOrder where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data SortingOrder = SortingOrderAsc | SortingOrderDesc
    deriving (Show, Eq, Generic)

instance FromJSON SortingOrder where
    parseJSON v = case v of
        "asc" -> pure SortingOrderAsc
        "desc" -> pure SortingOrderDesc
        _ -> fail "Expected one of the constants in the oneOf schema"