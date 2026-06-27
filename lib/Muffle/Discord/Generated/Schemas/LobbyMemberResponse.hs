{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.LobbyMemberResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data LobbyMemberResponse = LobbyMemberResponse
    { flags :: Int32
    , id :: SnowflakeType
    , metadata :: Maybe LobbyMemberResponseMetadataNullableInner
    }
    deriving (Show, Eq, Generic)

instance FromJSON LobbyMemberResponse where
    parseJSON = withObject "LobbyMemberResponse" $ \o ->
        LobbyMemberResponse <$>
            o .: "flags"
            <*> o .: "id"
            <*> o .: "metadata"

data LobbyMemberResponseMetadataNullableInner = LobbyMemberResponseMetadataNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON LobbyMemberResponseMetadataNullableInner where
    parseJSON = withObject "LobbyMemberResponseMetadataNullableInner" $ \_ -> pure LobbyMemberResponseMetadataNullableInner