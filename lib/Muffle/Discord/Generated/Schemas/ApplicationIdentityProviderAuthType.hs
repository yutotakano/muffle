{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationIdentityProviderAuthType where

import Data.Int (Int32, Int64)
import GHC.Generics


data ApplicationIdentityProviderAuthType = ApplicationIdentityProviderAuthTypeOIDC | ApplicationIdentityProviderAuthTypeEPICONLINESERVICESACCESSTOKEN | ApplicationIdentityProviderAuthTypeEPICONLINESERVICESIDTOKEN | ApplicationIdentityProviderAuthTypeSTEAMSESSIONTICKET | ApplicationIdentityProviderAuthTypeUNITYSERVICESIDTOKEN | ApplicationIdentityProviderAuthTypeDISCORDBOTISSUEDACCESSTOKEN | ApplicationIdentityProviderAuthTypeAPPLEIDTOKEN | ApplicationIdentityProviderAuthTypePLAYSTATIONNETWORKIDTOKEN
    deriving (Show, Eq, Generic)
