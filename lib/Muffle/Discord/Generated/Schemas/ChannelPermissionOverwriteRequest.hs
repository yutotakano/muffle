{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ChannelPermissionOverwriteRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ChannelPermissionOverwrites

data ChannelPermissionOverwriteRequest = ChannelPermissionOverwriteRequest
    { allow :: Maybe (Maybe Integer)
    , deny :: Maybe (Maybe Integer)
    , id :: SnowflakeType
    , type' :: Maybe (Maybe ChannelPermissionOverwrites)
    }
    deriving (Show, Eq, Generic)

instance FromJSON ChannelPermissionOverwriteRequest where
    parseJSON = withObject "ChannelPermissionOverwriteRequest" $ \o ->
        ChannelPermissionOverwriteRequest <$>
            o .: "allow"
            <*> o .: "deny"
            <*> o .: "id"
            <*> o .: "type"