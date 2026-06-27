{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.WidgetSettingsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data WidgetSettingsResponse = WidgetSettingsResponse
    { channelId :: Maybe SnowflakeType
    , enabled :: Bool
    }
    deriving (Show, Eq, Generic)

instance FromJSON WidgetSettingsResponse where
    parseJSON = withObject "WidgetSettingsResponse" $ \o ->
        WidgetSettingsResponse <$>
            o .: "channel_id"
            <*> o .: "enabled"