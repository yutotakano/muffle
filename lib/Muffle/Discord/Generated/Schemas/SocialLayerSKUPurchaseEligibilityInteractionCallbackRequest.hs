{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.SocialLayerSKUPurchaseEligibilityInteractionCallbackRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SocialLayerSKUPurchaseEligibilityCallbackData
import Muffle.Discord.Generated.Schemas.InteractionCallbackTypes

data SocialLayerSKUPurchaseEligibilityInteractionCallbackRequest = SocialLayerSKUPurchaseEligibilityInteractionCallbackRequest
    { data' :: SocialLayerSKUPurchaseEligibilityCallbackData
    , type' :: InteractionCallbackTypes
    }
    deriving (Show, Eq, Generic)
