{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SnowflakeType where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype SnowflakeType = SnowflakeType String
    deriving (Show, Eq, Generic)

instance FromJSON SnowflakeType where
    parseJSON v = SnowflakeType <$> parseJSON v