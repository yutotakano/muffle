{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.EmbeddedActivityInstance where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.GuildChannelLocation
import Muffle.Discord.Generated.Schemas.PrivateChannelLocation

data EmbeddedActivityInstance = EmbeddedActivityInstance
    { applicationId :: SnowflakeType
    , instanceId :: String
    , launchId :: String
    , location :: EmbeddedActivityInstanceLocation
    , users :: [SnowflakeType]
    }
    deriving (Show, Eq, Generic)

instance FromJSON EmbeddedActivityInstance where
    parseJSON = withObject "EmbeddedActivityInstance" $ \o ->
        EmbeddedActivityInstance <$>
            o .: "application_id"
            <*> o .: "instance_id"
            <*> o .: "launch_id"
            <*> o .: "location"
            <*> o .: "users"

data EmbeddedActivityInstanceLocation = EmbeddedActivityInstanceLocation0 GuildChannelLocation | EmbeddedActivityInstanceLocation1 PrivateChannelLocation
    deriving (Show, Eq, Generic)

instance FromJSON EmbeddedActivityInstanceLocation where
    parseJSON v =
        EmbeddedActivityInstanceLocation0 <$> parseJSON v
            <|> EmbeddedActivityInstanceLocation1 <$> parseJSON v