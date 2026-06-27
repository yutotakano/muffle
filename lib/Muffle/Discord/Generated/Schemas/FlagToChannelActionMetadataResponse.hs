{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.FlagToChannelActionMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data FlagToChannelActionMetadataResponse = FlagToChannelActionMetadataResponse
    { channelId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)

instance FromJSON FlagToChannelActionMetadataResponse where
    parseJSON = withObject "FlagToChannelActionMetadataResponse" $ \o ->
        FlagToChannelActionMetadataResponse <$>
            o .: "channel_id"