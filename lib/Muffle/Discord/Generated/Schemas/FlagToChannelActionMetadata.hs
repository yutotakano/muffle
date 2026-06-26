{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.FlagToChannelActionMetadata where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data FlagToChannelActionMetadata = FlagToChannelActionMetadata
    { channelId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)
