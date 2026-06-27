{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PrivateChannelResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.ChannelTypes

data PrivateChannelResponse = PrivateChannelResponse
    { flags :: Int32
    , id :: SnowflakeType
    , lastMessageId :: Maybe (Maybe SnowflakeType)
    , lastPinTimestamp :: Maybe (Maybe String)
    , recipients :: [UserResponse]
    , type' :: ChannelTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON PrivateChannelResponse where
    parseJSON = withObject "PrivateChannelResponse" $ \o ->
        PrivateChannelResponse <$>
            o .: "flags"
            <*> o .: "id"
            <*> o .: "last_message_id"
            <*> o .: "last_pin_timestamp"
            <*> o .: "recipients"
            <*> o .: "type"