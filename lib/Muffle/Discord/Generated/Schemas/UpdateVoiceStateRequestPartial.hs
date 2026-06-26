{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UpdateVoiceStateRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data UpdateVoiceStateRequestPartial = UpdateVoiceStateRequestPartial
    { channelId :: Maybe (Maybe SnowflakeType)
    , suppress :: Maybe (Maybe Bool)
    }
    deriving (Show, Eq, Generic)
