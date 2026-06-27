{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PollLayoutTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype PollLayoutTypes = PollLayoutTypes Int32
    deriving (Show, Eq, Generic)

instance FromJSON PollLayoutTypes where
    parseJSON v = PollLayoutTypes <$> parseJSON v