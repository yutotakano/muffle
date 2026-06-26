{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PrivateGroupChannelResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.ChannelTypes

data PrivateGroupChannelResponse = PrivateGroupChannelResponse
    { applicationId :: Maybe SnowflakeType
    , flags :: Int32
    , icon :: Maybe String
    , id :: SnowflakeType
    , lastMessageId :: Maybe (Maybe SnowflakeType)
    , lastPinTimestamp :: Maybe (Maybe String)
    , managed :: Maybe Bool
    , name :: Maybe String
    , ownerId :: SnowflakeType
    , recipients :: [UserResponse]
    , type' :: ChannelTypes
    }
    deriving (Show, Eq, Generic)
