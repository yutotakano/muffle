{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.OAuth2GetAuthorizationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationResponse
import Muffle.Discord.Generated.Schemas.OAuth2Scopes
import Muffle.Discord.Generated.Schemas.UserResponse

data OAuth2GetAuthorizationResponse = OAuth2GetAuthorizationResponse
    { application :: ApplicationResponse
    , expires :: String
    , scopes :: [OAuth2Scopes]
    , user :: Maybe UserResponse
    }
    deriving (Show, Eq, Generic)

instance FromJSON OAuth2GetAuthorizationResponse where
    parseJSON = withObject "OAuth2GetAuthorizationResponse" $ \o ->
        OAuth2GetAuthorizationResponse <$>
            o .: "application"
            <*> o .: "expires"
            <*> o .: "scopes"
            <*> o .: "user"