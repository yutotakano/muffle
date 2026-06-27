{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildScheduledEventExceptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data GuildScheduledEventExceptionResponse = GuildScheduledEventExceptionResponse
    { eventExceptionId :: SnowflakeType
    , eventId :: SnowflakeType
    , isCanceled :: Bool
    , scheduledEndTime :: Maybe String
    , scheduledStartTime :: Maybe String
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildScheduledEventExceptionResponse where
    parseJSON = withObject "GuildScheduledEventExceptionResponse" $ \o ->
        GuildScheduledEventExceptionResponse <$>
            o .: "event_exception_id"
            <*> o .: "event_id"
            <*> o .: "is_canceled"
            <*> o .: "scheduled_end_time"
            <*> o .: "scheduled_start_time"