{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.InteractionCallbackTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype InteractionCallbackTypes = InteractionCallbackTypes Int32
    deriving (Show, Eq, Generic)

instance FromJSON InteractionCallbackTypes where
    parseJSON v = InteractionCallbackTypes <$> parseJSON v