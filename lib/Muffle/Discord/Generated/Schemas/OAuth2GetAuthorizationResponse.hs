{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.OAuth2GetAuthorizationResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
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
