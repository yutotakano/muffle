{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageReferenceResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.MessageReferenceType

data MessageReferenceResponse = MessageReferenceResponse
    { channelId :: SnowflakeType
    , guildId :: SnowflakeType
    , messageId :: SnowflakeType
    , type' :: MessageReferenceType
    }
    deriving (Show, Eq, Generic)
