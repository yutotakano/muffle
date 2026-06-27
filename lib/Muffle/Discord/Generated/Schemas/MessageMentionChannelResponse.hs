{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageMentionChannelResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ChannelTypes

data MessageMentionChannelResponse = MessageMentionChannelResponse
    { guildId :: SnowflakeType
    , id :: SnowflakeType
    , name :: String
    , type' :: ChannelTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageMentionChannelResponse where
    parseJSON = withObject "MessageMentionChannelResponse" $ \o ->
        MessageMentionChannelResponse <$>
            o .: "guild_id"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "type"