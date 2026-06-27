{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.BotAddGuildMemberRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data BotAddGuildMemberRequest = BotAddGuildMemberRequest
    { accessToken :: String
    , deaf :: Maybe (Maybe Bool)
    , flags :: Maybe (Maybe Integer)
    , mute :: Maybe (Maybe Bool)
    , nick :: Maybe (Maybe String)
    , roles :: Maybe [SnowflakeType]
    }
    deriving (Show, Eq, Generic)

instance FromJSON BotAddGuildMemberRequest where
    parseJSON = withObject "BotAddGuildMemberRequest" $ \o ->
        BotAddGuildMemberRequest <$>
            o .: "access_token"
            <*> o .: "deaf"
            <*> o .: "flags"
            <*> o .: "mute"
            <*> o .: "nick"
            <*> o .: "roles"