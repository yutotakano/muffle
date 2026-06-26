{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CustomClientThemeResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageShareCustomUserThemeBaseTheme

data CustomClientThemeResponse = CustomClientThemeResponse
    { baseMix :: Int32
    , baseTheme :: MessageShareCustomUserThemeBaseTheme
    , colors :: [String]
    , gradientAngle :: Int32
    }
    deriving (Show, Eq, Generic)
