{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.AutomodActionType where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

newtype AutomodActionType = AutomodActionType Int32
    deriving (Show, Eq, Generic)

instance FromJSON AutomodActionType where
    parseJSON v = AutomodActionType <$> parseJSON v