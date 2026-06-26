{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.WidgetResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.WidgetChannel
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.WidgetMember

data WidgetResponse = WidgetResponse
    { channels :: [WidgetChannel]
    , id :: SnowflakeType
    , instantInvite :: Maybe String
    , members :: [WidgetMember]
    , name :: String
    , presenceCount :: Int32
    }
    deriving (Show, Eq, Generic)
