{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PremiumGuildTiers where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype PremiumGuildTiers = PremiumGuildTiers Int32
    deriving (Show, Eq, Generic)

instance FromJSON PremiumGuildTiers where
    parseJSON v = PremiumGuildTiers <$> parseJSON v