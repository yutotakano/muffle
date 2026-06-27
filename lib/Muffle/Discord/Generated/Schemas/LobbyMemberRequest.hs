{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.LobbyMemberRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data LobbyMemberRequest = LobbyMemberRequest
    { flags :: Maybe LobbyMemberRequestFlagsNullableInner
    , id :: SnowflakeType
    , metadata :: Maybe LobbyMemberRequestMetadataNullableInner
    }
    deriving (Show, Eq, Generic)

instance FromJSON LobbyMemberRequest where
    parseJSON = withObject "LobbyMemberRequest" $ \o ->
        LobbyMemberRequest <$>
            o .: "flags"
            <*> o .: "id"
            <*> o .: "metadata"

newtype LobbyMemberRequestFlagsNullableInner = LobbyMemberRequestFlagsNullableInner (Maybe LobbyMemberRequestFlagsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON LobbyMemberRequestFlagsNullableInner where
    parseJSON v = LobbyMemberRequestFlagsNullableInner <$> parseJSON v

data LobbyMemberRequestFlagsNullableInnerNullableInner = LobbyMemberRequestFlagsNullableInnerNullableInnerEnum1
    deriving (Show, Eq, Generic)

instance FromJSON LobbyMemberRequestFlagsNullableInnerNullableInner where
    parseJSON (Number 1) = pure LobbyMemberRequestFlagsNullableInnerNullableInnerEnum1
    parseJSON _ = fail "Expected one of: 1"

newtype LobbyMemberRequestMetadataNullableInner = LobbyMemberRequestMetadataNullableInner (Maybe LobbyMemberRequestMetadataNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON LobbyMemberRequestMetadataNullableInner where
    parseJSON v = LobbyMemberRequestMetadataNullableInner <$> parseJSON v

data LobbyMemberRequestMetadataNullableInnerNullableInner = LobbyMemberRequestMetadataNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON LobbyMemberRequestMetadataNullableInnerNullableInner where
    parseJSON = withObject "LobbyMemberRequestMetadataNullableInnerNullableInner" $ \_ -> pure LobbyMemberRequestMetadataNullableInnerNullableInner