{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PurchaseType where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype PurchaseType = PurchaseType Int32
    deriving (Show, Eq, Generic)

instance FromJSON PurchaseType where
    parseJSON v = PurchaseType <$> parseJSON v