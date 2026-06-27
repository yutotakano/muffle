{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SubscriptionResponseStatusType where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

newtype SubscriptionResponseStatusType = SubscriptionResponseStatusType Int32
    deriving (Show, Eq, Generic)

instance FromJSON SubscriptionResponseStatusType where
    parseJSON v = SubscriptionResponseStatusType <$> parseJSON v