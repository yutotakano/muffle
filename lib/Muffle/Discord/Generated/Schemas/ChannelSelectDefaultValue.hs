{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ChannelSelectDefaultValue where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.SnowflakeSelectDefaultValueTypes

data ChannelSelectDefaultValue = ChannelSelectDefaultValue
    { id :: SnowflakeType
    , type' :: SnowflakeSelectDefaultValueTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON ChannelSelectDefaultValue where
    parseJSON = withObject "ChannelSelectDefaultValue" $ \o ->
        ChannelSelectDefaultValue <$>
            o .: "id"
            <*> o .: "type"