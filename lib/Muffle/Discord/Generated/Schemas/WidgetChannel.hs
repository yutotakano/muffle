{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.WidgetChannel where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data WidgetChannel = WidgetChannel
    { id :: SnowflakeType
    , name :: String
    , position :: Int32
    }
    deriving (Show, Eq, Generic)
