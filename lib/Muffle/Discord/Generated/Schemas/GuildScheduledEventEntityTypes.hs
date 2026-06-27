{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildScheduledEventEntityTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype GuildScheduledEventEntityTypes = GuildScheduledEventEntityTypes Int32
    deriving (Show, Eq, Generic)

instance FromJSON GuildScheduledEventEntityTypes where
    parseJSON v = GuildScheduledEventEntityTypes <$> parseJSON v