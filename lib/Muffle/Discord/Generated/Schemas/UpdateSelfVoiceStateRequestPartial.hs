{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UpdateSelfVoiceStateRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data UpdateSelfVoiceStateRequestPartial = UpdateSelfVoiceStateRequestPartial
    { channelId :: Maybe (Maybe SnowflakeType)
    , requestToSpeakTimestamp :: Maybe (Maybe String)
    , suppress :: Maybe (Maybe Bool)
    }
    deriving (Show, Eq, Generic)

instance FromJSON UpdateSelfVoiceStateRequestPartial where
    parseJSON = withObject "UpdateSelfVoiceStateRequestPartial" $ \o ->
        UpdateSelfVoiceStateRequestPartial <$>
            o .: "channel_id"
            <*> o .: "request_to_speak_timestamp"
            <*> o .: "suppress"