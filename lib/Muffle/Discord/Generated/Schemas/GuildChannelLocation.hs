{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildChannelLocation where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.EmbeddedActivityLocationKind

data GuildChannelLocation = GuildChannelLocation
    { channelId :: SnowflakeType
    , guildId :: SnowflakeType
    , id :: String
    , kind :: EmbeddedActivityLocationKind
    }
    deriving (Show, Eq, Generic)
