{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.LaunchActivityInteractionCallbackRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.InteractionCallbackTypes

data LaunchActivityInteractionCallbackRequest = LaunchActivityInteractionCallbackRequest
    { type' :: InteractionCallbackTypes
    }
    deriving (Show, Eq, Generic)
