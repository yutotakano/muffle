{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UpdateVoiceStateRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data UpdateVoiceStateRequestPartial = UpdateVoiceStateRequestPartial
    { channelId :: Maybe (Maybe SnowflakeType)
    , suppress :: Maybe (Maybe Bool)
    }
    deriving (Show, Eq, Generic)

instance FromJSON UpdateVoiceStateRequestPartial where
    parseJSON = withObject "UpdateVoiceStateRequestPartial" $ \o ->
        UpdateVoiceStateRequestPartial <$>
            o .: "channel_id"
            <*> o .: "suppress"