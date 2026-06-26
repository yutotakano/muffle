{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.LobbyMemberResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data LobbyMemberResponse = LobbyMemberResponse
    { flags :: Int32
    , id :: SnowflakeType
    , metadata :: Maybe LobbyMemberResponseMetadataNullableInner
    }
    deriving (Show, Eq, Generic)
data LobbyMemberResponseMetadataNullableInner = LobbyMemberResponseMetadataNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
