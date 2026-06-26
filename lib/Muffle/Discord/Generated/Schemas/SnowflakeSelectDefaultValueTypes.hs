{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.SnowflakeSelectDefaultValueTypes where

import Data.Int (Int32, Int64)
import GHC.Generics


data SnowflakeSelectDefaultValueTypes = SnowflakeSelectDefaultValueTypesUser | SnowflakeSelectDefaultValueTypesRole | SnowflakeSelectDefaultValueTypesChannel
    deriving (Show, Eq, Generic)
