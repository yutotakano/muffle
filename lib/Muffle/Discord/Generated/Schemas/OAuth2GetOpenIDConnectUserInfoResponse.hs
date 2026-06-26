{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.OAuth2GetOpenIDConnectUserInfoResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


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
