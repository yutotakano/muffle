{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SocialLayerSKUPurchaseEligibilityInteractionCallbackRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SocialLayerSKUPurchaseEligibilityCallbackData
import Muffle.Discord.Generated.Schemas.InteractionCallbackTypes

data SocialLayerSKUPurchaseEligibilityInteractionCallbackRequest = SocialLayerSKUPurchaseEligibilityInteractionCallbackRequest
    { data' :: SocialLayerSKUPurchaseEligibilityCallbackData
    , type' :: InteractionCallbackTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON SocialLayerSKUPurchaseEligibilityInteractionCallbackRequest where
    parseJSON = withObject "SocialLayerSKUPurchaseEligibilityInteractionCallbackRequest" $ \o ->
        SocialLayerSKUPurchaseEligibilityInteractionCallbackRequest <$>
            o .: "data"
            <*> o .: "type"