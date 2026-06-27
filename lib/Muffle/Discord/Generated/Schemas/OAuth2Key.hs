{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.OAuth2Key where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data OAuth2Key = OAuth2Key
    { alg :: String
    , e :: String
    , kid :: String
    , kty :: String
    , n :: String
    , use :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON OAuth2Key where
    parseJSON = withObject "OAuth2Key" $ \o ->
        OAuth2Key <$>
            o .: "alg"
            <*> o .: "e"
            <*> o .: "kid"
            <*> o .: "kty"
            <*> o .: "n"
            <*> o .: "use"