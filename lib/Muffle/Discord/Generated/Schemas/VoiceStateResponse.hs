{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.VoiceStateResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.GuildMemberResponse

data VoiceStateResponse = VoiceStateResponse
    { channelId :: Maybe SnowflakeType
    , deaf :: Bool
    , guildId :: Maybe SnowflakeType
    , member :: GuildMemberResponse
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
