{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.AfkTimeouts where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype AfkTimeouts = AfkTimeouts Int32
    deriving (Show, Eq, Generic)

instance FromJSON AfkTimeouts where
    parseJSON v = AfkTimeouts <$> parseJSON v