{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.InteractionCallbackResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.InteractionResponse
import Muffle.Discord.Generated.Schemas.CreateMessageInteractionCallbackResponse
import Muffle.Discord.Generated.Schemas.LaunchActivityInteractionCallbackResponse
import Muffle.Discord.Generated.Schemas.UpdateMessageInteractionCallbackResponse

data InteractionCallbackResponse = InteractionCallbackResponse
    { interaction :: InteractionResponse
    , resource :: Maybe InteractionCallbackResponseResourceNullableInner
    }
    deriving (Show, Eq, Generic)
data InteractionCallbackResponseResourceNullableInner = InteractionCallbackResponseResourceNullableInner0 CreateMessageInteractionCallbackResponse | InteractionCallbackResponseResourceNullableInner1 LaunchActivityInteractionCallbackResponse | InteractionCallbackResponseResourceNullableInner2 UpdateMessageInteractionCallbackResponse
    deriving (Show, Eq, Generic)
