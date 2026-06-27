{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ActivityActionTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype ActivityActionTypes = ActivityActionTypes Int32
    deriving (Show, Eq, Generic)

instance FromJSON ActivityActionTypes where
    parseJSON v = ActivityActionTypes <$> parseJSON v