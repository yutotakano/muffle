{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.CreateMessageInteractionCallbackResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageResponse
import Muffle.Discord.Generated.Schemas.InteractionCallbackTypes

data CreateMessageInteractionCallbackResponse = CreateMessageInteractionCallbackResponse
    { message :: MessageResponse
    , type' :: InteractionCallbackTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON CreateMessageInteractionCallbackResponse where
    parseJSON = withObject "CreateMessageInteractionCallbackResponse" $ \o ->
        CreateMessageInteractionCallbackResponse <$>
            o .: "message"
            <*> o .: "type"