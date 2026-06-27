{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PremiumTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype PremiumTypes = PremiumTypes Int32
    deriving (Show, Eq, Generic)

instance FromJSON PremiumTypes where
    parseJSON v = PremiumTypes <$> parseJSON v