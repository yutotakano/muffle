{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ButtonStyleTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype ButtonStyleTypes = ButtonStyleTypes Int32
    deriving (Show, Eq, Generic)

instance FromJSON ButtonStyleTypes where
    parseJSON v = ButtonStyleTypes <$> parseJSON v