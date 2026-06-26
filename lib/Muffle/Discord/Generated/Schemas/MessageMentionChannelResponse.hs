{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageMentionChannelResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ChannelTypes

data MessageMentionChannelResponse = MessageMentionChannelResponse
    { guildId :: SnowflakeType
    , id :: SnowflakeType
    , name :: String
    , type' :: ChannelTypes
    }
    deriving (Show, Eq, Generic)
