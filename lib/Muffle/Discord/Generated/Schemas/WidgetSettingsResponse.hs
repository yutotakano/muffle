{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.WidgetSettingsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data WidgetSettingsResponse = WidgetSettingsResponse
    { channelId :: Maybe SnowflakeType
    , enabled :: Bool
    }
    deriving (Show, Eq, Generic)
