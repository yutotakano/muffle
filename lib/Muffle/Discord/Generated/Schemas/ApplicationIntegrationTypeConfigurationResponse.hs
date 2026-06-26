{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationIntegrationTypeConfigurationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationOAuth2InstallParamsResponse

data ApplicationIntegrationTypeConfigurationResponse = ApplicationIntegrationTypeConfigurationResponse
    { oauth2InstallParams :: ApplicationOAuth2InstallParamsResponse
    }
    deriving (Show, Eq, Generic)
