{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.LaunchActivityInteractionCallbackRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.InteractionCallbackTypes

data LaunchActivityInteractionCallbackRequest = LaunchActivityInteractionCallbackRequest
    { type' :: InteractionCallbackTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON LaunchActivityInteractionCallbackRequest where
    parseJSON = withObject "LaunchActivityInteractionCallbackRequest" $ \o ->
        LaunchActivityInteractionCallbackRequest <$>
            o .: "type"