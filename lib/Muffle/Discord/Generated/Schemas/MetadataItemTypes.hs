{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MetadataItemTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

newtype MetadataItemTypes = MetadataItemTypes Int32
    deriving (Show, Eq, Generic)

instance FromJSON MetadataItemTypes where
    parseJSON v = MetadataItemTypes <$> parseJSON v