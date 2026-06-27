{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ChannelFollowerResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data ChannelFollowerResponse = ChannelFollowerResponse
    { channelId :: SnowflakeType
    , webhookId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)

instance FromJSON ChannelFollowerResponse where
    parseJSON = withObject "ChannelFollowerResponse" $ \o ->
        ChannelFollowerResponse <$>
            o .: "channel_id"
            <*> o .: "webhook_id"