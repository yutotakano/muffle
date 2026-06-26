{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildWelcomeScreenChannelResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data GuildWelcomeScreenChannelResponse = GuildWelcomeScreenChannelResponse
    { channelId :: SnowflakeType
    , description :: String
    , emojiId :: Maybe SnowflakeType
    , emojiName :: Maybe String
    }
    deriving (Show, Eq, Generic)
