{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.LobbyMemberRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data LobbyMemberRequest = LobbyMemberRequest
    { flags :: Maybe LobbyMemberRequestFlagsNullableInner
    , id :: SnowflakeType
    , metadata :: Maybe LobbyMemberRequestMetadataNullableInner
    }
    deriving (Show, Eq, Generic)
newtype LobbyMemberRequestFlagsNullableInner = LobbyMemberRequestFlagsNullableInner (Maybe LobbyMemberRequestFlagsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data LobbyMemberRequestFlagsNullableInnerNullableInner = LobbyMemberRequestFlagsNullableInnerNullableInnerEnum1
    deriving (Show, Eq, Generic)
newtype LobbyMemberRequestMetadataNullableInner = LobbyMemberRequestMetadataNullableInner (Maybe LobbyMemberRequestMetadataNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data LobbyMemberRequestMetadataNullableInnerNullableInner = LobbyMemberRequestMetadataNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
