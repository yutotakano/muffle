{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.CustomClientThemeResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageShareCustomUserThemeBaseTheme

data CustomClientThemeResponse = CustomClientThemeResponse
    { baseMix :: Int32
    , baseTheme :: MessageShareCustomUserThemeBaseTheme
    , colors :: [String]
    , gradientAngle :: Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON CustomClientThemeResponse where
    parseJSON = withObject "CustomClientThemeResponse" $ \o ->
        CustomClientThemeResponse <$>
            o .: "base_mix"
            <*> o .: "base_theme"
            <*> o .: "colors"
            <*> o .: "gradient_angle"