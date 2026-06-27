{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildChannelLocation where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.EmbeddedActivityLocationKind

data GuildChannelLocation = GuildChannelLocation
    { channelId :: SnowflakeType
    , guildId :: SnowflakeType
    , id :: String
    , kind :: EmbeddedActivityLocationKind
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildChannelLocation where
    parseJSON = withObject "GuildChannelLocation" $ \o ->
        GuildChannelLocation <$>
            o .: "channel_id"
            <*> o .: "guild_id"
            <*> o .: "id"
            <*> o .: "kind"