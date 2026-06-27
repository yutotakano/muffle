{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SnowflakeSelectDefaultValueTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data SnowflakeSelectDefaultValueTypes = SnowflakeSelectDefaultValueTypesUser | SnowflakeSelectDefaultValueTypesRole | SnowflakeSelectDefaultValueTypesChannel
    deriving (Show, Eq, Generic)

instance FromJSON SnowflakeSelectDefaultValueTypes where
    parseJSON v = case v of
        "user" -> pure SnowflakeSelectDefaultValueTypesUser
        "role" -> pure SnowflakeSelectDefaultValueTypesRole
        "channel" -> pure SnowflakeSelectDefaultValueTypesChannel
        _ -> fail "Expected one of the constants in the oneOf schema"