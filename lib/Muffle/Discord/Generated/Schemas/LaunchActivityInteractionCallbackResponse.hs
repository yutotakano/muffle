{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.LaunchActivityInteractionCallbackResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ActivityInstanceCallbackResponse
import Muffle.Discord.Generated.Schemas.InteractionCallbackTypes

data LaunchActivityInteractionCallbackResponse = LaunchActivityInteractionCallbackResponse
    { activityInstance :: ActivityInstanceCallbackResponse
    , type' :: InteractionCallbackTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON LaunchActivityInteractionCallbackResponse where
    parseJSON = withObject "LaunchActivityInteractionCallbackResponse" $ \o ->
        LaunchActivityInteractionCallbackResponse <$>
            o .: "activity_instance"
            <*> o .: "type"