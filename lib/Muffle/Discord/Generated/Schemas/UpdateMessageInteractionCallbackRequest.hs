{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UpdateMessageInteractionCallbackRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.IncomingWebhookUpdateForInteractionCallbackRequestPartial
import Muffle.Discord.Generated.Schemas.InteractionCallbackTypes

data UpdateMessageInteractionCallbackRequest = UpdateMessageInteractionCallbackRequest
    { data' :: Maybe IncomingWebhookUpdateForInteractionCallbackRequestPartial
    , type' :: InteractionCallbackTypes
    }
    deriving (Show, Eq, Generic)
