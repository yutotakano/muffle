{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CreateMessageInteractionCallbackRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.IncomingWebhookInteractionRequest
import Muffle.Discord.Generated.Schemas.InteractionCallbackTypes

data CreateMessageInteractionCallbackRequest = CreateMessageInteractionCallbackRequest
    { data' :: Maybe (Maybe IncomingWebhookInteractionRequest)
    , type' :: InteractionCallbackTypes
    }
    deriving (Show, Eq, Generic)
