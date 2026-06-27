{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageAllowedMentionsRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.AllowedMentionTypes
import Muffle.Discord.Generated.Schemas.SnowflakeType

data MessageAllowedMentionsRequest = MessageAllowedMentionsRequest
    { parse :: Maybe ([Maybe AllowedMentionTypes])
    , repliedUser :: Maybe (Maybe Bool)
    , roles :: Maybe ([Maybe SnowflakeType])
    , users :: Maybe ([Maybe SnowflakeType])
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageAllowedMentionsRequest where
    parseJSON = withObject "MessageAllowedMentionsRequest" $ \o ->
        MessageAllowedMentionsRequest <$>
            o .: "parse"
            <*> o .: "replied_user"
            <*> o .: "roles"
            <*> o .: "users"