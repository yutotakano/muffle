{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.RecurrenceRuleResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.RecurrenceRuleMonths
import Muffle.Discord.Generated.Schemas.ByNWeekdayResponse
import Muffle.Discord.Generated.Schemas.RecurrenceRuleWeekdays
import Muffle.Discord.Generated.Schemas.RecurrenceRuleFrequencies

data RecurrenceRuleResponse = RecurrenceRuleResponse
    { byMonth :: [RecurrenceRuleMonths]
    , byMonthDay :: [Int32]
    , byNWeekday :: [ByNWeekdayResponse]
    , byWeekday :: [RecurrenceRuleWeekdays]
    , byYearDay :: [Int32]
    , count :: Maybe Int32
    , end :: Maybe String
    , frequency :: RecurrenceRuleFrequencies
    , interval :: Int32
    , start :: String
    }
    deriving (Show, Eq, Generic)
