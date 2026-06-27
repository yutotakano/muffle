{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.EntitlementOwnerTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype EntitlementOwnerTypes = EntitlementOwnerTypes Int32
    deriving (Show, Eq, Generic)

instance FromJSON EntitlementOwnerTypes where
    parseJSON v = EntitlementOwnerTypes <$> parseJSON v