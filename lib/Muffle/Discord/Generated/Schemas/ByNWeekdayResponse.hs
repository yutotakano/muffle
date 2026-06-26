{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ByNWeekdayResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.RecurrenceRuleWeekdays

data ByNWeekdayResponse = ByNWeekdayResponse
    { day :: RecurrenceRuleWeekdays
    , n :: Int32
    }
    deriving (Show, Eq, Generic)
