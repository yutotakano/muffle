{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.BulkLobbyMemberRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data BulkLobbyMemberRequest = BulkLobbyMemberRequest
    { flags :: Maybe BulkLobbyMemberRequestFlagsNullableInner
    , id :: SnowflakeType
    , metadata :: Maybe BulkLobbyMemberRequestMetadataNullableInner
    , removeMember :: Maybe (Maybe Bool)
    }
    deriving (Show, Eq, Generic)

instance FromJSON BulkLobbyMemberRequest where
    parseJSON = withObject "BulkLobbyMemberRequest" $ \o ->
        BulkLobbyMemberRequest <$>
            o .: "flags"
            <*> o .: "id"
            <*> o .: "metadata"
            <*> o .: "remove_member"

newtype BulkLobbyMemberRequestFlagsNullableInner = BulkLobbyMemberRequestFlagsNullableInner (Maybe BulkLobbyMemberRequestFlagsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON BulkLobbyMemberRequestFlagsNullableInner where
    parseJSON v = BulkLobbyMemberRequestFlagsNullableInner <$> parseJSON v

data BulkLobbyMemberRequestFlagsNullableInnerNullableInner = BulkLobbyMemberRequestFlagsNullableInnerNullableInnerEnum1
    deriving (Show, Eq, Generic)

instance FromJSON BulkLobbyMemberRequestFlagsNullableInnerNullableInner where
    parseJSON (Number 1) = pure BulkLobbyMemberRequestFlagsNullableInnerNullableInnerEnum1
    parseJSON _ = fail "Expected one of: 1"

newtype BulkLobbyMemberRequestMetadataNullableInner = BulkLobbyMemberRequestMetadataNullableInner (Maybe BulkLobbyMemberRequestMetadataNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON BulkLobbyMemberRequestMetadataNullableInner where
    parseJSON v = BulkLobbyMemberRequestMetadataNullableInner <$> parseJSON v

data BulkLobbyMemberRequestMetadataNullableInnerNullableInner = BulkLobbyMemberRequestMetadataNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON BulkLobbyMemberRequestMetadataNullableInnerNullableInner where
    parseJSON = withObject "BulkLobbyMemberRequestMetadataNullableInnerNullableInner" $ \_ -> pure BulkLobbyMemberRequestMetadataNullableInnerNullableInner