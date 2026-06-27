{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ScheduledEventUserResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
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

instance FromJSON ScheduledEventUserResponse where
    parseJSON = withObject "ScheduledEventUserResponse" $ \o ->
        ScheduledEventUserResponse <$>
            o .: "guild_scheduled_event_exception_id"
            <*> o .: "guild_scheduled_event_id"
            <*> o .: "member"
            <*> o .: "response"
            <*> o .: "user"
            <*> o .: "user_id"