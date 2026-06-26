{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageReferenceRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.MessageReferenceType

data MessageReferenceRequest = MessageReferenceRequest
    { channelId :: Maybe (Maybe SnowflakeType)
    , failIfNotExists :: Maybe (Maybe Bool)
    , guildId :: Maybe (Maybe SnowflakeType)
    , messageId :: SnowflakeType
    , type' :: Maybe (Maybe MessageReferenceType)
    }
    deriving (Show, Eq, Generic)
