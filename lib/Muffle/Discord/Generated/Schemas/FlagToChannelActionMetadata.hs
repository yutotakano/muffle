{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.FlagToChannelActionMetadata where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data FlagToChannelActionMetadata = FlagToChannelActionMetadata
    { channelId :: SnowflakeType
    }
    deriving (Show, Eq, Generic)

instance FromJSON FlagToChannelActionMetadata where
    parseJSON = withObject "FlagToChannelActionMetadata" $ \o ->
        FlagToChannelActionMetadata <$>
            o .: "channel_id"