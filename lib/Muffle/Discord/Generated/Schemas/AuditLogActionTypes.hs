{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.AuditLogActionTypes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

newtype AuditLogActionTypes = AuditLogActionTypes Int32
    deriving (Show, Eq, Generic)

instance FromJSON AuditLogActionTypes where
    parseJSON v = AuditLogActionTypes <$> parseJSON v