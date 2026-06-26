{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.AuditLogEntryResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.AuditLogActionTypes
import Muffle.Discord.Generated.Schemas.AuditLogObjectChangeResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType

data AuditLogEntryResponse = AuditLogEntryResponse
    { actionType :: AuditLogActionTypes
    , changes :: Maybe [AuditLogObjectChangeResponse]
    , id :: SnowflakeType
    , options :: Maybe AuditLogEntryResponseOptionsNullableInner
    , reason :: Maybe String
    , targetId :: Maybe SnowflakeType
    , userId :: Maybe SnowflakeType
    }
    deriving (Show, Eq, Generic)
data AuditLogEntryResponseOptionsNullableInner = AuditLogEntryResponseOptionsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
