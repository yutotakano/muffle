{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationIntegrationTypeConfiguration where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationOAuth2InstallParams

data ApplicationIntegrationTypeConfiguration = ApplicationIntegrationTypeConfiguration
    { oauth2InstallParams :: Maybe ApplicationOAuth2InstallParams
    }
    deriving (Show, Eq, Generic)
