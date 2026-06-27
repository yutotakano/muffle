{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.RecurrenceRuleResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.RecurrenceRuleMonths
import Muffle.Discord.Generated.Schemas.ByNWeekdayResponse
import Muffle.Discord.Generated.Schemas.RecurrenceRuleWeekdays
import Muffle.Discord.Generated.Schemas.RecurrenceRuleFrequencies

data RecurrenceRuleResponse = RecurrenceRuleResponse
    { byMonth :: [RecurrenceRuleMonths]
    , byMonthDay :: [Int32]
    , byNWeekday :: [ByNWeekdayResponse]
    , byWeekday :: [RecurrenceRuleWeekdays]
    , byYearDay :: Maybe [Int32]
    , count :: Maybe (Maybe Int32)
    , end :: Maybe (Maybe String)
    , frequency :: RecurrenceRuleFrequencies
    , interval :: Int32
    , start :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON RecurrenceRuleResponse where
    parseJSON = withObject "RecurrenceRuleResponse" $ \o ->
        RecurrenceRuleResponse <$>
            o .: "by_month"
            <*> o .: "by_month_day"
            <*> o .: "by_n_weekday"
            <*> o .: "by_weekday"
            <*> o .: "by_year_day"
            <*> o .: "count"
            <*> o .: "end"
            <*> o .: "frequency"
            <*> o .: "interval"
            <*> o .: "start"