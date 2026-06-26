{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UpdateSelfVoiceStateRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data UpdateSelfVoiceStateRequestPartial = UpdateSelfVoiceStateRequestPartial
    { channelId :: Maybe SnowflakeType
    , requestToSpeakTimestamp :: Maybe String
    , suppress :: Maybe Bool
    }
    deriving (Show, Eq, Generic)
