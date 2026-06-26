{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildScheduledEventExceptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data GuildScheduledEventExceptionResponse = GuildScheduledEventExceptionResponse
    { eventExceptionId :: SnowflakeType
    , eventId :: SnowflakeType
    , isCanceled :: Bool
    , scheduledEndTime :: Maybe String
    , scheduledStartTime :: Maybe String
    }
    deriving (Show, Eq, Generic)
