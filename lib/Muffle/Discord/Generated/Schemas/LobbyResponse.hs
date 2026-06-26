{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.LobbyResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UInt32Type
import Muffle.Discord.Generated.Schemas.GuildChannelResponse
import Muffle.Discord.Generated.Schemas.LobbyMemberResponse

data LobbyResponse = LobbyResponse
    { applicationId :: SnowflakeType
    , flags :: UInt32Type
    , id :: SnowflakeType
    , linkedChannel :: GuildChannelResponse
    , members :: [LobbyMemberResponse]
    , metadata :: Maybe LobbyResponseMetadataNullableInner
    , overrideEventWebhooksUrl :: Maybe String
    }
    deriving (Show, Eq, Generic)
data LobbyResponseMetadataNullableInner = LobbyResponseMetadataNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
