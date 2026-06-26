{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ComponentEmojiForRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data ComponentEmojiForRequest = ComponentEmojiForRequest
    { id :: Maybe SnowflakeType
    , name :: String
    }
    deriving (Show, Eq, Generic)
