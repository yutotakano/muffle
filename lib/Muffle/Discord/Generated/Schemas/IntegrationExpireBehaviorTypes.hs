{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.IntegrationExpireBehaviorTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

newtype IntegrationExpireBehaviorTypes = IntegrationExpireBehaviorTypes Int32
    deriving (Show, Eq, Generic)

instance FromJSON IntegrationExpireBehaviorTypes where
    parseJSON v = IntegrationExpireBehaviorTypes <$> parseJSON v