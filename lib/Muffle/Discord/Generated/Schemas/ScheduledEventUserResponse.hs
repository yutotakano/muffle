{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ScheduledEventUserResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.GuildMemberResponse
import Muffle.Discord.Generated.Schemas.GuildScheduledEventUserResponses
import Muffle.Discord.Generated.Schemas.UserResponse

data ScheduledEventUserResponse = ScheduledEventUserResponse
    { guildScheduledEventExceptionId :: Maybe (Maybe SnowflakeType)
    , guildScheduledEventId :: SnowflakeType
    , member :: Maybe GuildMemberResponse
    , response :: GuildScheduledEventUserResponses
    , user :: Maybe UserResponse
    , userId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)
