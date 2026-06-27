{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.AuditLogObjectChangeResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data AuditLogObjectChangeResponse = AuditLogObjectChangeResponse
    { key :: Maybe String
    , newValue :: Maybe AuditLogObjectChangeResponseNewValueNullableInner
    , oldValue :: Maybe AuditLogObjectChangeResponseOldValueNullableInner
    }
    deriving (Show, Eq, Generic)

instance FromJSON AuditLogObjectChangeResponse where
    parseJSON = withObject "AuditLogObjectChangeResponse" $ \o ->
        AuditLogObjectChangeResponse <$>
            o .: "key"
            <*> o .: "new_value"
            <*> o .: "old_value"

data AuditLogObjectChangeResponseNewValueNullableInner = AuditLogObjectChangeResponseNewValueNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON AuditLogObjectChangeResponseNewValueNullableInner where
    parseJSON _ = fail "Expected empty schema"

data AuditLogObjectChangeResponseOldValueNullableInner = AuditLogObjectChangeResponseOldValueNullableInner
    deriving (Show, Eq, Generic)

instance FromJSON AuditLogObjectChangeResponseOldValueNullableInner where
    parseJSON _ = fail "Expected empty schema"