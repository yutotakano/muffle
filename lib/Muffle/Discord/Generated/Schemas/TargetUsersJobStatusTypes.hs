{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.TargetUsersJobStatusTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

newtype TargetUsersJobStatusTypes = TargetUsersJobStatusTypes Int32
    deriving (Show, Eq, Generic)

instance FromJSON TargetUsersJobStatusTypes where
    parseJSON v = TargetUsersJobStatusTypes <$> parseJSON v