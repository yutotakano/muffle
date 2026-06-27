{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageReferenceRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.MessageReferenceType

data MessageReferenceRequest = MessageReferenceRequest
    { channelId :: Maybe (Maybe SnowflakeType)
    , failIfNotExists :: Maybe (Maybe Bool)
    , guildId :: Maybe (Maybe SnowflakeType)
    , messageId :: SnowflakeType
    , type' :: Maybe (Maybe MessageReferenceType)
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageReferenceRequest where
    parseJSON = withObject "MessageReferenceRequest" $ \o ->
        MessageReferenceRequest <$>
            o .: "channel_id"
            <*> o .: "fail_if_not_exists"
            <*> o .: "guild_id"
            <*> o .: "message_id"
            <*> o .: "type"