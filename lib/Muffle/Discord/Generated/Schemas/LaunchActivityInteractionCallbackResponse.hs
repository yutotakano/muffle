{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.LaunchActivityInteractionCallbackResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ActivityInstanceCallbackResponse
import Muffle.Discord.Generated.Schemas.InteractionCallbackTypes

data LaunchActivityInteractionCallbackResponse = LaunchActivityInteractionCallbackResponse
    { activityInstance :: ActivityInstanceCallbackResponse
    , type' :: InteractionCallbackTypes
    }
    deriving (Show, Eq, Generic)
