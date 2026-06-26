{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CreateMessageInteractionCallbackResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageResponse
import Muffle.Discord.Generated.Schemas.InteractionCallbackTypes

data CreateMessageInteractionCallbackResponse = CreateMessageInteractionCallbackResponse
    { message :: MessageResponse
    , type' :: InteractionCallbackTypes
    }
    deriving (Show, Eq, Generic)
