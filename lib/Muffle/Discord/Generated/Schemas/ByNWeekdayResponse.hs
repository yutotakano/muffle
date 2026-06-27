{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ByNWeekdayResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.RecurrenceRuleWeekdays

data ByNWeekdayResponse = ByNWeekdayResponse
    { day :: RecurrenceRuleWeekdays
    , n :: Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON ByNWeekdayResponse where
    parseJSON = withObject "ByNWeekdayResponse" $ \o ->
        ByNWeekdayResponse <$>
            o .: "day"
            <*> o .: "n"