{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.CreateMessageInteractionCallbackRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.IncomingWebhookInteractionRequest
import Muffle.Discord.Generated.Schemas.InteractionCallbackTypes

data CreateMessageInteractionCallbackRequest = CreateMessageInteractionCallbackRequest
    { data' :: Maybe (Maybe IncomingWebhookInteractionRequest)
    , type' :: InteractionCallbackTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON CreateMessageInteractionCallbackRequest where
    parseJSON = withObject "CreateMessageInteractionCallbackRequest" $ \o ->
        CreateMessageInteractionCallbackRequest <$>
            o .: "data"
            <*> o .: "type"