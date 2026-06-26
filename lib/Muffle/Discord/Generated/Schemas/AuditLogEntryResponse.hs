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
    , changes :: [AuditLogObjectChangeResponse]
    , id :: SnowflakeType
    , options :: AuditLogEntryResponseOptions
    , reason :: String
    , targetId :: Maybe SnowflakeType
    , userId :: Maybe SnowflakeType
    }
    deriving (Show, Eq, Generic)
data AuditLogEntryResponseOptions = AuditLogEntryResponseOptions
    { 
    }
    deriving (Show, Eq, Generic)
