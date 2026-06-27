{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.RecurrenceRuleFrequencies where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype RecurrenceRuleFrequencies = RecurrenceRuleFrequencies Int32
    deriving (Show, Eq, Generic)

instance FromJSON RecurrenceRuleFrequencies where
    parseJSON v = RecurrenceRuleFrequencies <$> parseJSON v