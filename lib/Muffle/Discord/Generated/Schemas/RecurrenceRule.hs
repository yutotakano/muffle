{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.RecurrenceRule where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.RecurrenceRuleMonths
import Muffle.Discord.Generated.Schemas.ByNWeekday
import Muffle.Discord.Generated.Schemas.RecurrenceRuleWeekdays
import Muffle.Discord.Generated.Schemas.RecurrenceRuleFrequencies

data RecurrenceRule = RecurrenceRule
    { byMonth :: Maybe [RecurrenceRuleMonths]
    , byMonthDay :: Maybe [Int32]
    , byNWeekday :: Maybe [ByNWeekday]
    , byWeekday :: Maybe [RecurrenceRuleWeekdays]
    , byYearDay :: Maybe [Int32]
    , count :: Maybe (Maybe Int32)
    , end :: Maybe (Maybe String)
    , frequency :: RecurrenceRuleFrequencies
    , interval :: Maybe (Maybe Int32)
    , start :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON RecurrenceRule where
    parseJSON = withObject "RecurrenceRule" $ \o ->
        RecurrenceRule <$>
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