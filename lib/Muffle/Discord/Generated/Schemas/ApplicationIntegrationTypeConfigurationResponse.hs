{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationIntegrationTypeConfigurationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationOAuth2InstallParamsResponse

data ApplicationIntegrationTypeConfigurationResponse = ApplicationIntegrationTypeConfigurationResponse
    { oauth2InstallParams :: Maybe ApplicationOAuth2InstallParamsResponse
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationIntegrationTypeConfigurationResponse where
    parseJSON = withObject "ApplicationIntegrationTypeConfigurationResponse" $ \o ->
        ApplicationIntegrationTypeConfigurationResponse <$>
            o .: "oauth2_install_params"