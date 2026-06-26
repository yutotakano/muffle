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
    , removeMember :: Maybe (Maybe Bool)
    }
    deriving (Show, Eq, Generic)
newtype BulkLobbyMemberRequestFlagsNullableInner = BulkLobbyMemberRequestFlagsNullableInner (Maybe BulkLobbyMemberRequestFlagsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data BulkLobbyMemberRequestFlagsNullableInnerNullableInner = BulkLobbyMemberRequestFlagsNullableInnerNullableInnerEnum1
    deriving (Show, Eq, Generic)
newtype BulkLobbyMemberRequestMetadataNullableInner = BulkLobbyMemberRequestMetadataNullableInner (Maybe BulkLobbyMemberRequestMetadataNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data BulkLobbyMemberRequestMetadataNullableInnerNullableInner = BulkLobbyMemberRequestMetadataNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
