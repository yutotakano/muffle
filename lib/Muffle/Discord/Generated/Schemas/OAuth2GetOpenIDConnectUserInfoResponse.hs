{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.OAuth2GetOpenIDConnectUserInfoResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data OAuth2GetOpenIDConnectUserInfoResponse = OAuth2GetOpenIDConnectUserInfoResponse
    { email :: Maybe (Maybe String)
    , emailVerified :: Maybe Bool
    , locale :: Maybe String
    , nickname :: Maybe (Maybe String)
    , picture :: Maybe String
    , preferredUsername :: Maybe String
    , sub :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON OAuth2GetOpenIDConnectUserInfoResponse where
    parseJSON = withObject "OAuth2GetOpenIDConnectUserInfoResponse" $ \o ->
        OAuth2GetOpenIDConnectUserInfoResponse <$>
            o .: "email"
            <*> o .: "email_verified"
            <*> o .: "locale"
            <*> o .: "nickname"
            <*> o .: "picture"
            <*> o .: "preferred_username"
            <*> o .: "sub"