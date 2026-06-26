{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ComponentEmojiResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data ComponentEmojiResponse = ComponentEmojiResponse
    { animated :: Bool
    , id :: SnowflakeType
    , name :: String
    }
    deriving (Show, Eq, Generic)
