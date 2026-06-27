{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ThreadMemberResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.GuildMemberResponse

data ThreadMemberResponse = ThreadMemberResponse
    { flags :: Int32
    , id :: SnowflakeType
    , joinTimestamp :: String
    , member :: Maybe GuildMemberResponse
    , userId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ThreadMemberResponse where
    parseJSON = withObject "ThreadMemberResponse" $ \o ->
        ThreadMemberResponse <$>
            o .: "flags"
            <*> o .: "id"
            <*> o .: "join_timestamp"
            <*> o .: "member"
            <*> o .: "user_id"