{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageReferenceResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.MessageReferenceType

data MessageReferenceResponse = MessageReferenceResponse
    { channelId :: SnowflakeType
    , guildId :: Maybe SnowflakeType
    , messageId :: Maybe SnowflakeType
    , type' :: MessageReferenceType
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageReferenceResponse where
    parseJSON = withObject "MessageReferenceResponse" $ \o ->
        MessageReferenceResponse <$>
            o .: "channel_id"
            <*> o .: "guild_id"
            <*> o .: "message_id"
            <*> o .: "type"