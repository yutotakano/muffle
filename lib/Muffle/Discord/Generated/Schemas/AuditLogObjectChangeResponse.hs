{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.AuditLogObjectChangeResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data AuditLogObjectChangeResponse = AuditLogObjectChangeResponse
    { key :: Maybe String
    , newValue :: Maybe AuditLogObjectChangeResponseNewValueNullableInner
    , oldValue :: Maybe AuditLogObjectChangeResponseOldValueNullableInner
    }
    deriving (Show, Eq, Generic)
data AuditLogObjectChangeResponseNewValueNullableInner = AuditLogObjectChangeResponseNewValueNullableInner
    deriving (Show, Eq, Generic)
data AuditLogObjectChangeResponseOldValueNullableInner = AuditLogObjectChangeResponseOldValueNullableInner
    deriving (Show, Eq, Generic)
