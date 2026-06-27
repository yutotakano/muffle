{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ApplicationOAuth2InstallParamsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.OAuth2Scopes

data ApplicationOAuth2InstallParamsResponse = ApplicationOAuth2InstallParamsResponse
    { permissions :: String
    , scopes :: [OAuth2Scopes]
    }
    deriving (Show, Eq, Generic)

instance FromJSON ApplicationOAuth2InstallParamsResponse where
    parseJSON = withObject "ApplicationOAuth2InstallParamsResponse" $ \o ->
        ApplicationOAuth2InstallParamsResponse <$>
            o .: "permissions"
            <*> o .: "scopes"