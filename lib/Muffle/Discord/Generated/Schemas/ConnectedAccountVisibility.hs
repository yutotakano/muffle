{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ConnectedAccountVisibility where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype ConnectedAccountVisibility = ConnectedAccountVisibility Int32
    deriving (Show, Eq, Generic)

instance FromJSON ConnectedAccountVisibility where
    parseJSON v = ConnectedAccountVisibility <$> parseJSON v