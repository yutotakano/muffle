{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildWelcomeChannel where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data GuildWelcomeChannel = GuildWelcomeChannel
    { channelId :: SnowflakeType
    , description :: String
    , emojiId :: Maybe (Maybe SnowflakeType)
    , emojiName :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)
