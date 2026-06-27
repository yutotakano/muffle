{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ByNWeekday where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.RecurrenceRuleWeekdays

data ByNWeekday = ByNWeekday
    { day :: RecurrenceRuleWeekdays
    , n :: Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON ByNWeekday where
    parseJSON = withObject "ByNWeekday" $ \o ->
        ByNWeekday <$>
            o .: "day"
            <*> o .: "n"