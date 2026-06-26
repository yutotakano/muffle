{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.BulkLobbyMemberRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data BulkLobbyMemberRequest = BulkLobbyMemberRequest
    { flags :: Maybe BulkLobbyMemberRequestFlagsNullableInner
    , id :: SnowflakeType
    , metadata :: Maybe BulkLobbyMemberRequestMetadataNullableInner
    , removeMember :: Maybe Bool
    }
    deriving (Show, Eq, Generic)
data BulkLobbyMemberRequestFlagsNullableInner = BulkLobbyMemberRequestFlagsNullableInnerEnum1
    deriving (Show, Eq, Generic)
data BulkLobbyMemberRequestMetadataNullableInner = BulkLobbyMemberRequestMetadataNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
