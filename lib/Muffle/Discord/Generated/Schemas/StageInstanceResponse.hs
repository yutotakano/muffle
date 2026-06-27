{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.StageInstanceResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.StageInstancesPrivacyLevels

data StageInstanceResponse = StageInstanceResponse
    { channelId :: SnowflakeType
    , discoverableDisabled :: Bool
    , guildId :: SnowflakeType
    , guildScheduledEventId :: Maybe SnowflakeType
    , id :: SnowflakeType
    , privacyLevel :: StageInstancesPrivacyLevels
    , topic :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON StageInstanceResponse where
    parseJSON = withObject "StageInstanceResponse" $ \o ->
        StageInstanceResponse <$>
            o .: "channel_id"
            <*> o .: "discoverable_disabled"
            <*> o .: "guild_id"
            <*> o .: "guild_scheduled_event_id"
            <*> o .: "id"
            <*> o .: "privacy_level"
            <*> o .: "topic"