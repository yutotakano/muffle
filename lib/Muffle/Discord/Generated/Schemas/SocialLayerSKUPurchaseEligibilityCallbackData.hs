{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SocialLayerSKUPurchaseEligibilityCallbackData where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SKUIneligibilityReason

data SocialLayerSKUPurchaseEligibilityCallbackData = SocialLayerSKUPurchaseEligibilityCallbackData
    { eligible :: Bool
    , ineligibleReason :: Maybe (Maybe SKUIneligibilityReason)
    , ineligibleReasonDescription :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON SocialLayerSKUPurchaseEligibilityCallbackData where
    parseJSON = withObject "SocialLayerSKUPurchaseEligibilityCallbackData" $ \o ->
        SocialLayerSKUPurchaseEligibilityCallbackData <$>
            o .: "eligible"
            <*> o .: "ineligible_reason"
            <*> o .: "ineligible_reason_description"