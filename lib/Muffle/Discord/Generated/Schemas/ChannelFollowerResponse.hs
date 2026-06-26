{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ChannelFollowerResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data ChannelFollowerResponse = ChannelFollowerResponse
    { channelId :: SnowflakeType
    , webhookId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)
