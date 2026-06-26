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
data LobbyMemberRequestFlagsNullableInner = LobbyMemberRequestFlagsNullableInnerEnum1
    deriving (Show, Eq, Generic)
data LobbyMemberRequestMetadataNullableInner = LobbyMemberRequestMetadataNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
