{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildScheduledEventExceptionPatchRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data GuildScheduledEventExceptionPatchRequestPartial = GuildScheduledEventExceptionPatchRequestPartial
    { isCanceled :: Maybe (Maybe Bool)
    , scheduledEndTime :: Maybe (Maybe String)
    , scheduledStartTime :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildScheduledEventExceptionPatchRequestPartial where
    parseJSON = withObject "GuildScheduledEventExceptionPatchRequestPartial" $ \o ->
        GuildScheduledEventExceptionPatchRequestPartial <$>
            o .: "is_canceled"
            <*> o .: "scheduled_end_time"
            <*> o .: "scheduled_start_time"