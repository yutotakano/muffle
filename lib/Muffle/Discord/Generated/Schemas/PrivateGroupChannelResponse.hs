{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PrivateGroupChannelResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
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

instance FromJSON PrivateGroupChannelResponse where
    parseJSON = withObject "PrivateGroupChannelResponse" $ \o ->
        PrivateGroupChannelResponse <$>
            o .: "application_id"
            <*> o .: "flags"
            <*> o .: "icon"
            <*> o .: "id"
            <*> o .: "last_message_id"
            <*> o .: "last_pin_timestamp"
            <*> o .: "managed"
            <*> o .: "name"
            <*> o .: "owner_id"
            <*> o .: "recipients"
            <*> o .: "type"