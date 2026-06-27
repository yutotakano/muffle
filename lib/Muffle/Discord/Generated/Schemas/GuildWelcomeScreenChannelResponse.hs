{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildWelcomeScreenChannelResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data GuildWelcomeScreenChannelResponse = GuildWelcomeScreenChannelResponse
    { channelId :: SnowflakeType
    , description :: String
    , emojiId :: Maybe SnowflakeType
    , emojiName :: Maybe String
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildWelcomeScreenChannelResponse where
    parseJSON = withObject "GuildWelcomeScreenChannelResponse" $ \o ->
        GuildWelcomeScreenChannelResponse <$>
            o .: "channel_id"
            <*> o .: "description"
            <*> o .: "emoji_id"
            <*> o .: "emoji_name"