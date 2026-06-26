{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ThreadSortingMode where

import Data.Int (Int32, Int64)
import GHC.Generics


data ThreadSortingMode = ThreadSortingModeRelevance | ThreadSortingModeCreationTime | ThreadSortingModeLastMessageTime | ThreadSortingModeArchiveTime
    deriving (Show, Eq, Generic)
