{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.WidgetActivity where

import Data.Int (Int32, Int64)
import GHC.Generics


data WidgetActivity = WidgetActivity
    { name :: String
    }
    deriving (Show, Eq, Generic)
