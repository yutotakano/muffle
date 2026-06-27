{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandType where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

newtype ApplicationCommandType = ApplicationCommandType Int32
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationCommandType where
    parseJSON v = ApplicationCommandType <$> parseJSON v