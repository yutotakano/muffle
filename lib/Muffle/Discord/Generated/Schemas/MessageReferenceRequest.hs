{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageReferenceRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.MessageReferenceType

data MessageReferenceRequest = MessageReferenceRequest
    { channelId :: Maybe SnowflakeType
    , failIfNotExists :: Maybe Bool
    , guildId :: Maybe SnowflakeType
    , messageId :: SnowflakeType
    , type' :: Maybe MessageReferenceType
    }
    deriving (Show, Eq, Generic)
