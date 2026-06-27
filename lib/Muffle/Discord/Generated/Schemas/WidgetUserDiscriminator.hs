{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.WidgetUserDiscriminator where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data WidgetUserDiscriminator = WidgetUserDiscriminatorA0000
    deriving (Show, Eq, Generic)

instance FromJSON WidgetUserDiscriminator where
    parseJSON v = case v of
        "0000" -> pure WidgetUserDiscriminatorA0000
        _ -> fail "Expected one of the constants in the oneOf schema"