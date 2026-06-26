{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.SortingOrder where

import Data.Int (Int32, Int64)
import GHC.Generics


data SortingOrder = SortingOrderAsc | SortingOrderDesc
    deriving (Show, Eq, Generic)
