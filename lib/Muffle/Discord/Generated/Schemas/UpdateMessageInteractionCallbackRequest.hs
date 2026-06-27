{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UpdateMessageInteractionCallbackRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.IncomingWebhookUpdateForInteractionCallbackRequestPartial
import Muffle.Discord.Generated.Schemas.InteractionCallbackTypes

data UpdateMessageInteractionCallbackRequest = UpdateMessageInteractionCallbackRequest
    { data' :: Maybe (Maybe IncomingWebhookUpdateForInteractionCallbackRequestPartial)
    , type' :: InteractionCallbackTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON UpdateMessageInteractionCallbackRequest where
    parseJSON = withObject "UpdateMessageInteractionCallbackRequest" $ \o ->
        UpdateMessageInteractionCallbackRequest <$>
            o .: "data"
            <*> o .: "type"