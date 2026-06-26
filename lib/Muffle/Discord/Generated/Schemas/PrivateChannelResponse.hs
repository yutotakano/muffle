{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PrivateChannelResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.ChannelTypes

data PrivateChannelResponse = PrivateChannelResponse
    { flags :: Int32
    , id :: SnowflakeType
    , lastMessageId :: Maybe SnowflakeType
    , lastPinTimestamp :: Maybe String
    , recipients :: [UserResponse]
    , type' :: ChannelTypes
    }
    deriving (Show, Eq, Generic)
