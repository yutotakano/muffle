{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.WidgetImageStyles where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data WidgetImageStyles = WidgetImageStylesShield | WidgetImageStylesBanner1 | WidgetImageStylesBanner2 | WidgetImageStylesBanner3 | WidgetImageStylesBanner4
    deriving (Show, Eq, Generic)

instance FromJSON WidgetImageStyles where
    parseJSON v = case v of
        "shield" -> pure WidgetImageStylesShield
        "banner1" -> pure WidgetImageStylesBanner1
        "banner2" -> pure WidgetImageStylesBanner2
        "banner3" -> pure WidgetImageStylesBanner3
        "banner4" -> pure WidgetImageStylesBanner4
        _ -> fail "Expected one of the constants in the oneOf schema"