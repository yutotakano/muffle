{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ProvisionalTokenResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data ProvisionalTokenResponse = ProvisionalTokenResponse
    { accessToken :: String
    , expiresAtS :: Maybe (Maybe Int32)
    , expiresIn :: Int32
    , idToken :: String
    , refreshToken :: Maybe (Maybe String)
    , scope :: String
    , scopes :: Maybe [String]
    , tokenType :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON ProvisionalTokenResponse where
    parseJSON = withObject "ProvisionalTokenResponse" $ \o ->
        ProvisionalTokenResponse <$>
            o .: "access_token"
            <*> o .: "expires_at_s"
            <*> o .: "expires_in"
            <*> o .: "id_token"
            <*> o .: "refresh_token"
            <*> o .: "scope"
            <*> o .: "scopes"
            <*> o .: "token_type"