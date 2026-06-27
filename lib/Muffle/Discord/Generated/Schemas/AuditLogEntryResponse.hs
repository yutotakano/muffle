{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.AuditLogEntryResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
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

instance FromJSON AuditLogEntryResponse where
    parseJSON = withObject "AuditLogEntryResponse" $ \o ->
        AuditLogEntryResponse <$>
            o .: "action_type"
            <*> o .: "changes"
            <*> o .: "id"
            <*> o .: "options"
            <*> o .: "reason"
            <*> o .: "target_id"
            <*> o .: "user_id"

data AuditLogEntryResponseOptionsNullableInner = AuditLogEntryResponseOptionsNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON AuditLogEntryResponseOptionsNullableInner where
    parseJSON = withObject "AuditLogEntryResponseOptionsNullableInner" $ \_ -> pure AuditLogEntryResponseOptionsNullableInner