{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.RecurrenceRuleMonths where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

newtype RecurrenceRuleMonths = RecurrenceRuleMonths Int32
    deriving (Show, Eq, Generic)

instance FromJSON RecurrenceRuleMonths where
    parseJSON v = RecurrenceRuleMonths <$> parseJSON v