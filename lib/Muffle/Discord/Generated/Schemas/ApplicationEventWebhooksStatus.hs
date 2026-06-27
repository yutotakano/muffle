{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationEventWebhooksStatus where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

newtype ApplicationEventWebhooksStatus = ApplicationEventWebhooksStatus Int32
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationEventWebhooksStatus where
    parseJSON v = ApplicationEventWebhooksStatus <$> parseJSON v