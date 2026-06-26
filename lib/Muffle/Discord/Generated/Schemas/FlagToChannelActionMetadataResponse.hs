{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.FlagToChannelActionMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data FlagToChannelActionMetadataResponse = FlagToChannelActionMetadataResponse
    { channelId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)
