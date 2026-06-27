{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.InteractionCallbackResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.InteractionResponse
import Muffle.Discord.Generated.Schemas.CreateMessageInteractionCallbackResponse
import Muffle.Discord.Generated.Schemas.LaunchActivityInteractionCallbackResponse
import Muffle.Discord.Generated.Schemas.UpdateMessageInteractionCallbackResponse

data InteractionCallbackResponse = InteractionCallbackResponse
    { interaction :: InteractionResponse
    , resource :: Maybe InteractionCallbackResponseResourceNullableInner
    }
    deriving (Show, Eq, Generic)

instance FromJSON InteractionCallbackResponse where
    parseJSON = withObject "InteractionCallbackResponse" $ \o ->
        InteractionCallbackResponse <$>
            o .: "interaction"
            <*> o .: "resource"

data InteractionCallbackResponseResourceNullableInner = InteractionCallbackResponseResourceNullableInner0 CreateMessageInteractionCallbackResponse | InteractionCallbackResponseResourceNullableInner1 LaunchActivityInteractionCallbackResponse | InteractionCallbackResponseResourceNullableInner2 UpdateMessageInteractionCallbackResponse
    deriving (Show, Eq, Generic)

instance FromJSON InteractionCallbackResponseResourceNullableInner where
    parseJSON v =
        InteractionCallbackResponseResourceNullableInner0 <$> parseJSON v
            <|> InteractionCallbackResponseResourceNullableInner1 <$> parseJSON v
            <|> InteractionCallbackResponseResourceNullableInner2 <$> parseJSON v