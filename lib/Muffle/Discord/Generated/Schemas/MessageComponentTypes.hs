{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageComponentTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype MessageComponentTypes = MessageComponentTypes Int32
    deriving (Show, Eq, Generic)

instance FromJSON MessageComponentTypes where
    parseJSON v = MessageComponentTypes <$> parseJSON v