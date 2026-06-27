{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildWelcomeChannel where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data GuildWelcomeChannel = GuildWelcomeChannel
    { channelId :: SnowflakeType
    , description :: String
    , emojiId :: Maybe (Maybe SnowflakeType)
    , emojiName :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildWelcomeChannel where
    parseJSON = withObject "GuildWelcomeChannel" $ \o ->
        GuildWelcomeChannel <$>
            o .: "channel_id"
            <*> o .: "description"
            <*> o .: "emoji_id"
            <*> o .: "emoji_name"