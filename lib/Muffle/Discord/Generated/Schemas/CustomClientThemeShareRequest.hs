{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.CustomClientThemeShareRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageShareCustomUserThemeBaseTheme

data CustomClientThemeShareRequest = CustomClientThemeShareRequest
    { baseMix :: Int32
    , baseTheme :: Maybe (Maybe MessageShareCustomUserThemeBaseTheme)
    , colors :: [String]
    , gradientAngle :: Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON CustomClientThemeShareRequest where
    parseJSON = withObject "CustomClientThemeShareRequest" $ \o ->
        CustomClientThemeShareRequest <$>
            o .: "base_mix"
            <*> o .: "base_theme"
            <*> o .: "colors"
            <*> o .: "gradient_angle"