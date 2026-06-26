{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.SocialLayerSKUPurchaseEligibilityCallbackData where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SKUIneligibilityReason

data SocialLayerSKUPurchaseEligibilityCallbackData = SocialLayerSKUPurchaseEligibilityCallbackData
    { eligible :: Bool
    , ineligibleReason :: Maybe SKUIneligibilityReason
    , ineligibleReasonDescription :: Maybe String
    }
    deriving (Show, Eq, Generic)
