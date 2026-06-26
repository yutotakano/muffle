{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.AuditLogObjectChangeResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data AuditLogObjectChangeResponse = AuditLogObjectChangeResponse
    { key :: Maybe String
    , newValue :: AuditLogObjectChangeResponseNewValue
    , oldValue :: AuditLogObjectChangeResponseOldValue
    }
    deriving (Show, Eq, Generic)
data AuditLogObjectChangeResponseNewValue = AuditLogObjectChangeResponseNewValue
    deriving (Show, Eq, Generic)
data AuditLogObjectChangeResponseOldValue = AuditLogObjectChangeResponseOldValue
    deriving (Show, Eq, Generic)
