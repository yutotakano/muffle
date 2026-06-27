{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationIdentityProviderAuthType where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data ApplicationIdentityProviderAuthType = ApplicationIdentityProviderAuthTypeOIDC | ApplicationIdentityProviderAuthTypeEPICONLINESERVICESACCESSTOKEN | ApplicationIdentityProviderAuthTypeEPICONLINESERVICESIDTOKEN | ApplicationIdentityProviderAuthTypeSTEAMSESSIONTICKET | ApplicationIdentityProviderAuthTypeUNITYSERVICESIDTOKEN | ApplicationIdentityProviderAuthTypeDISCORDBOTISSUEDACCESSTOKEN | ApplicationIdentityProviderAuthTypeAPPLEIDTOKEN | ApplicationIdentityProviderAuthTypePLAYSTATIONNETWORKIDTOKEN
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationIdentityProviderAuthType where
    parseJSON v = case v of
        "OIDC" -> pure ApplicationIdentityProviderAuthTypeOIDC
        "EPIC_ONLINE_SERVICES_ACCESS_TOKEN" -> pure ApplicationIdentityProviderAuthTypeEPICONLINESERVICESACCESSTOKEN
        "EPIC_ONLINE_SERVICES_ID_TOKEN" -> pure ApplicationIdentityProviderAuthTypeEPICONLINESERVICESIDTOKEN
        "STEAM_SESSION_TICKET" -> pure ApplicationIdentityProviderAuthTypeSTEAMSESSIONTICKET
        "UNITY_SERVICES_ID_TOKEN" -> pure ApplicationIdentityProviderAuthTypeUNITYSERVICESIDTOKEN
        "DISCORD_BOT_ISSUED_ACCESS_TOKEN" -> pure ApplicationIdentityProviderAuthTypeDISCORDBOTISSUEDACCESSTOKEN
        "APPLE_ID_TOKEN" -> pure ApplicationIdentityProviderAuthTypeAPPLEIDTOKEN
        "PLAYSTATION_NETWORK_ID_TOKEN" -> pure ApplicationIdentityProviderAuthTypePLAYSTATIONNETWORKIDTOKEN
        _ -> fail "Expected one of the constants in the oneOf schema"