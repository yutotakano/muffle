{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CustomClientThemeShareRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageShareCustomUserThemeBaseTheme

data CustomClientThemeShareRequest = CustomClientThemeShareRequest
    { baseMix :: Int32
    , baseTheme :: Maybe MessageShareCustomUserThemeBaseTheme
    , colors :: [String]
    , gradientAngle :: Int32
    }
    deriving (Show, Eq, Generic)
