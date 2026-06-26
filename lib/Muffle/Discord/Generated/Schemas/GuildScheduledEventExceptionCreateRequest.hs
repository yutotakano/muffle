{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildScheduledEventExceptionCreateRequest where

import Data.Int (Int32, Int64)
import GHC.Generics


data GuildScheduledEventExceptionCreateRequest = GuildScheduledEventExceptionCreateRequest
    { isCanceled :: Maybe Bool
    , originalScheduledStartTime :: String
    , scheduledEndTime :: Maybe String
    , scheduledStartTime :: Maybe String
    }
    deriving (Show, Eq, Generic)
