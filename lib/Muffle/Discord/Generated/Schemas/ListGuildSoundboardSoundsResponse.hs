{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ListGuildSoundboardSoundsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SoundboardSoundResponse

data ListGuildSoundboardSoundsResponse = ListGuildSoundboardSoundsResponse
    { items :: [SoundboardSoundResponse]
    }
    deriving (Show, Eq, Generic)
