{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.RecurrenceRule where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.RecurrenceRuleMonths
import Muffle.Discord.Generated.Schemas.ByNWeekday
import Muffle.Discord.Generated.Schemas.RecurrenceRuleWeekdays
import Muffle.Discord.Generated.Schemas.RecurrenceRuleFrequencies

data RecurrenceRule = RecurrenceRule
    { byMonth :: [RecurrenceRuleMonths]
    , byMonthDay :: [Int32]
    , byNWeekday :: [ByNWeekday]
    , byWeekday :: [RecurrenceRuleWeekdays]
    , byYearDay :: [Int32]
    , count :: Maybe Int32
    , end :: Maybe String
    , frequency :: RecurrenceRuleFrequencies
    , interval :: Maybe Int32
    , start :: String
    }
    deriving (Show, Eq, Generic)
