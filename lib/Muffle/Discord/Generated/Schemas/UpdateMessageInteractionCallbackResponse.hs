{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UpdateMessageInteractionCallbackResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageResponse
import Muffle.Discord.Generated.Schemas.InteractionCallbackTypes

data UpdateMessageInteractionCallbackResponse = UpdateMessageInteractionCallbackResponse
    { message :: MessageResponse
    , type' :: InteractionCallbackTypes
    }
    deriving (Show, Eq, Generic)
