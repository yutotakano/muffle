{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UpdateMessageInteractionCallbackResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageResponse
import Muffle.Discord.Generated.Schemas.InteractionCallbackTypes

data UpdateMessageInteractionCallbackResponse = UpdateMessageInteractionCallbackResponse
    { message :: MessageResponse
    , type' :: InteractionCallbackTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON UpdateMessageInteractionCallbackResponse where
    parseJSON = withObject "UpdateMessageInteractionCallbackResponse" $ \o ->
        UpdateMessageInteractionCallbackResponse <$>
            o .: "message"
            <*> o .: "type"