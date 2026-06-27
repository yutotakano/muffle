{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ChannelTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype ChannelTypes = ChannelTypes Int32
    deriving (Show, Eq, Generic)

instance FromJSON ChannelTypes where
    parseJSON v = ChannelTypes <$> parseJSON v