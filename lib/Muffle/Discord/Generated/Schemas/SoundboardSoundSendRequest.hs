{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.SoundboardSoundSendRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data SoundboardSoundSendRequest = SoundboardSoundSendRequest
    { soundId :: SnowflakeType
    , sourceGuildId :: Maybe SnowflakeType
    }
    deriving (Show, Eq, Generic)
