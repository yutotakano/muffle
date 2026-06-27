{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ChannelPermissionOverwriteResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ChannelPermissionOverwrites

data ChannelPermissionOverwriteResponse = ChannelPermissionOverwriteResponse
    { allow :: String
    , deny :: String
    , id :: SnowflakeType
    , type' :: ChannelPermissionOverwrites
    }
    deriving (Show, Eq, Generic)

instance FromJSON ChannelPermissionOverwriteResponse where
    parseJSON = withObject "ChannelPermissionOverwriteResponse" $ \o ->
        ChannelPermissionOverwriteResponse <$>
            o .: "allow"
            <*> o .: "deny"
            <*> o .: "id"
            <*> o .: "type"