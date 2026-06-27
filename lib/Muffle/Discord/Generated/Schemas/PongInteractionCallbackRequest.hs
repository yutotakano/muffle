{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PongInteractionCallbackRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.InteractionCallbackTypes

data PongInteractionCallbackRequest = PongInteractionCallbackRequest
    { type' :: InteractionCallbackTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON PongInteractionCallbackRequest where
    parseJSON = withObject "PongInteractionCallbackRequest" $ \o ->
        PongInteractionCallbackRequest <$>
            o .: "type"