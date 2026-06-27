{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.CreatePrivateChannelRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data CreatePrivateChannelRequest = CreatePrivateChannelRequest
    { accessTokens :: Maybe [String]
    , nicks :: Maybe CreatePrivateChannelRequestNicksNullableInner
    , recipientId :: Maybe (Maybe SnowflakeType)
    }
    deriving (Show, Eq, Generic)

instance FromJSON CreatePrivateChannelRequest where
    parseJSON = withObject "CreatePrivateChannelRequest" $ \o ->
        CreatePrivateChannelRequest <$>
            o .: "access_tokens"
            <*> o .: "nicks"
            <*> o .: "recipient_id"

newtype CreatePrivateChannelRequestNicksNullableInner = CreatePrivateChannelRequestNicksNullableInner (Maybe CreatePrivateChannelRequestNicksNullableInnerNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON CreatePrivateChannelRequestNicksNullableInner where
    parseJSON v = CreatePrivateChannelRequestNicksNullableInner <$> parseJSON v

data CreatePrivateChannelRequestNicksNullableInnerNullableInner = CreatePrivateChannelRequestNicksNullableInnerNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON CreatePrivateChannelRequestNicksNullableInnerNullableInner where
    parseJSON = withObject "CreatePrivateChannelRequestNicksNullableInnerNullableInner" $ \_ -> pure CreatePrivateChannelRequestNicksNullableInnerNullableInner