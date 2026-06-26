{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ByNWeekday where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.RecurrenceRuleWeekdays

data ByNWeekday = ByNWeekday
    { day :: RecurrenceRuleWeekdays
    , n :: Int32
    }
    deriving (Show, Eq, Generic)
