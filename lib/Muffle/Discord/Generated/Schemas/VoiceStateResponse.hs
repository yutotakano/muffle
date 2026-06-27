{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.VoiceStateResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.GuildMemberResponse

data VoiceStateResponse = VoiceStateResponse
    { channelId :: Maybe SnowflakeType
    , deaf :: Bool
    , guildId :: Maybe SnowflakeType
    , member :: Maybe GuildMemberResponse
    , mute :: Bool
    , requestToSpeakTimestamp :: Maybe String
    , selfDeaf :: Bool
    , selfMute :: Bool
    , selfStream :: Maybe Bool
    , selfVideo :: Bool
    , sessionId :: String
    , suppress :: Bool
    , userId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)

instance FromJSON VoiceStateResponse where
    parseJSON = withObject "VoiceStateResponse" $ \o ->
        VoiceStateResponse <$>
            o .: "channel_id"
            <*> o .: "deaf"
            <*> o .: "guild_id"
            <*> o .: "member"
            <*> o .: "mute"
            <*> o .: "request_to_speak_timestamp"
            <*> o .: "self_deaf"
            <*> o .: "self_mute"
            <*> o .: "self_stream"
            <*> o .: "self_video"
            <*> o .: "session_id"
            <*> o .: "suppress"
            <*> o .: "user_id"