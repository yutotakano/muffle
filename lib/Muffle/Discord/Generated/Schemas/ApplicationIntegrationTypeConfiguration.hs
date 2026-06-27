{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationIntegrationTypeConfiguration where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationOAuth2InstallParams

data ApplicationIntegrationTypeConfiguration = ApplicationIntegrationTypeConfiguration
    { oauth2InstallParams :: Maybe (Maybe ApplicationOAuth2InstallParams)
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationIntegrationTypeConfiguration where
    parseJSON = withObject "ApplicationIntegrationTypeConfiguration" $ \o ->
        ApplicationIntegrationTypeConfiguration <$>
            o .: "oauth2_install_params"