{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ActivityInstanceCallbackResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data ActivityInstanceCallbackResponse = ActivityInstanceCallbackResponse
    { id :: String
    }
    deriving (Show, Eq, Generic)
