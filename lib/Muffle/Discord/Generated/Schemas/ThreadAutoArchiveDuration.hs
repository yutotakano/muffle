{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ThreadAutoArchiveDuration where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

newtype ThreadAutoArchiveDuration = ThreadAutoArchiveDuration Int32
    deriving (Show, Eq, Generic)

instance FromJSON ThreadAutoArchiveDuration where
    parseJSON v = ThreadAutoArchiveDuration <$> parseJSON v