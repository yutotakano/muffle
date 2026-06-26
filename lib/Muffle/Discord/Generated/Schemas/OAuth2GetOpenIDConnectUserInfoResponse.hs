{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.OAuth2GetOpenIDConnectUserInfoResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data OAuth2GetOpenIDConnectUserInfoResponse = OAuth2GetOpenIDConnectUserInfoResponse
    { email :: Maybe String
    , emailVerified :: Bool
    , locale :: String
    , nickname :: Maybe String
    , picture :: String
    , preferredUsername :: String
    , sub :: String
    }
    deriving (Show, Eq, Generic)
