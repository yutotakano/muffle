{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildMemberVerificationFormFieldType where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data GuildMemberVerificationFormFieldType = GuildMemberVerificationFormFieldTypeTERMS | GuildMemberVerificationFormFieldTypeTEXTINPUT | GuildMemberVerificationFormFieldTypePARAGRAPH | GuildMemberVerificationFormFieldTypeMULTIPLECHOICE
    deriving (Show, Eq, Generic)

instance FromJSON GuildMemberVerificationFormFieldType where
    parseJSON v = case v of
        "TERMS" -> pure GuildMemberVerificationFormFieldTypeTERMS
        "TEXT_INPUT" -> pure GuildMemberVerificationFormFieldTypeTEXTINPUT
        "PARAGRAPH" -> pure GuildMemberVerificationFormFieldTypePARAGRAPH
        "MULTIPLE_CHOICE" -> pure GuildMemberVerificationFormFieldTypeMULTIPLECHOICE
        _ -> fail "Expected one of the constants in the oneOf schema"