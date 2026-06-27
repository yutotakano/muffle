{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ScheduledEventUserCountResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data ScheduledEventUserCountResponse = ScheduledEventUserCountResponse
    { guildScheduledEventCount :: Int32
    , guildScheduledEventExceptionCounts :: ScheduledEventUserCountResponseGuildScheduledEventExceptionCounts
    }
    deriving (Show, Eq, Generic)

instance FromJSON ScheduledEventUserCountResponse where
    parseJSON = withObject "ScheduledEventUserCountResponse" $ \o ->
        ScheduledEventUserCountResponse <$>
            o .: "guild_scheduled_event_count"
            <*> o .: "guild_scheduled_event_exception_counts"

data ScheduledEventUserCountResponseGuildScheduledEventExceptionCounts = ScheduledEventUserCountResponseGuildScheduledEventExceptionCounts
    deriving (Show, Eq, Generic)

instance FromJSON ScheduledEventUserCountResponseGuildScheduledEventExceptionCounts where
    parseJSON = withObject "ScheduledEventUserCountResponseGuildScheduledEventExceptionCounts" $ \_ -> pure ScheduledEventUserCountResponseGuildScheduledEventExceptionCounts