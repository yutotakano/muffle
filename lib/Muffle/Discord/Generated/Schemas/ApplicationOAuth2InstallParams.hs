{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationOAuth2InstallParams where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.OAuth2Scopes

data ApplicationOAuth2InstallParams = ApplicationOAuth2InstallParams
    { permissions :: Maybe (Maybe Integer)
    , scopes :: Maybe [OAuth2Scopes]
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationOAuth2InstallParams where
    parseJSON = withObject "ApplicationOAuth2InstallParams" $ \o ->
        ApplicationOAuth2InstallParams <$>
            o .: "permissions"
            <*> o .: "scopes"