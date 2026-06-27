{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SKUIneligibilityReason where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype SKUIneligibilityReason = SKUIneligibilityReason Int32
    deriving (Show, Eq, Generic)

instance FromJSON SKUIneligibilityReason where
    parseJSON v = SKUIneligibilityReason <$> parseJSON v