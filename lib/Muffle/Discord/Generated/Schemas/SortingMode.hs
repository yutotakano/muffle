{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.SortingMode where

import Data.Int (Int32, Int64)
import GHC.Generics


data SortingMode = SortingModeRelevance | SortingModeTimestamp
    deriving (Show, Eq, Generic)
