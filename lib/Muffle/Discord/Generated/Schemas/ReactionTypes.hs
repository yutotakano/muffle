{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ReactionTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype ReactionTypes = ReactionTypes Int32
    deriving (Show, Eq, Generic)

instance FromJSON ReactionTypes where
    parseJSON v = ReactionTypes <$> parseJSON v