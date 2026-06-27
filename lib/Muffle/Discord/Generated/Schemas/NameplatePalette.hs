{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.NameplatePalette where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data NameplatePalette = NameplatePaletteCrimson | NameplatePaletteBerry | NameplatePaletteSky | NameplatePaletteTeal | NameplatePaletteForest | NameplatePaletteBubbleGum | NameplatePaletteViolet | NameplatePaletteCobalt | NameplatePaletteClover | NameplatePaletteLemon | NameplatePaletteWhite | NameplatePaletteBlack
    deriving (Show, Eq, Generic)

instance FromJSON NameplatePalette where
    parseJSON v = case v of
        "crimson" -> pure NameplatePaletteCrimson
        "berry" -> pure NameplatePaletteBerry
        "sky" -> pure NameplatePaletteSky
        "teal" -> pure NameplatePaletteTeal
        "forest" -> pure NameplatePaletteForest
        "bubble_gum" -> pure NameplatePaletteBubbleGum
        "violet" -> pure NameplatePaletteViolet
        "cobalt" -> pure NameplatePaletteCobalt
        "clover" -> pure NameplatePaletteClover
        "lemon" -> pure NameplatePaletteLemon
        "white" -> pure NameplatePaletteWhite
        "black" -> pure NameplatePaletteBlack
        _ -> fail "Expected one of the constants in the oneOf schema"