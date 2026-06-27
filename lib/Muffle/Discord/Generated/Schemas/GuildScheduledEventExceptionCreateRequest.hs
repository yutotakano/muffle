{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildScheduledEventExceptionCreateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data GuildScheduledEventExceptionCreateRequest = GuildScheduledEventExceptionCreateRequest
    { isCanceled :: Maybe (Maybe Bool)
    , originalScheduledStartTime :: String
    , scheduledEndTime :: Maybe (Maybe String)
    , scheduledStartTime :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildScheduledEventExceptionCreateRequest where
    parseJSON = withObject "GuildScheduledEventExceptionCreateRequest" $ \o ->
        GuildScheduledEventExceptionCreateRequest <$>
            o .: "is_canceled"
            <*> o .: "original_scheduled_start_time"
            <*> o .: "scheduled_end_time"
            <*> o .: "scheduled_start_time"