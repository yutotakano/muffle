{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ChannelSelectDefaultValueResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.SnowflakeSelectDefaultValueTypes

data ChannelSelectDefaultValueResponse = ChannelSelectDefaultValueResponse
    { id :: SnowflakeType
    , type' :: SnowflakeSelectDefaultValueTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON ChannelSelectDefaultValueResponse where
    parseJSON = withObject "ChannelSelectDefaultValueResponse" $ \o ->
        ChannelSelectDefaultValueResponse <$>
            o .: "id"
            <*> o .: "type"