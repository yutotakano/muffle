{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.VoiceRegionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data VoiceRegionResponse = VoiceRegionResponse
    { custom :: Bool
    , deprecated :: Bool
    , id :: String
    , name :: String
    , optimal :: Bool
    }
    deriving (Show, Eq, Generic)
