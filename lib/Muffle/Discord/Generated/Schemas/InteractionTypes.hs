{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.InteractionTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype InteractionTypes = InteractionTypes Int32
    deriving (Show, Eq, Generic)

instance FromJSON InteractionTypes where
    parseJSON v = InteractionTypes <$> parseJSON v