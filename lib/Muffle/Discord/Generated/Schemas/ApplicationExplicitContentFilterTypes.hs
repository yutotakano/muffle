{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationExplicitContentFilterTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype ApplicationExplicitContentFilterTypes = ApplicationExplicitContentFilterTypes Int32
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationExplicitContentFilterTypes where
    parseJSON v = ApplicationExplicitContentFilterTypes <$> parseJSON v