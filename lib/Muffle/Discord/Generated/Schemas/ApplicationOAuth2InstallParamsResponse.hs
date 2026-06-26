{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationOAuth2InstallParamsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.OAuth2Scopes

data ApplicationOAuth2InstallParamsResponse = ApplicationOAuth2InstallParamsResponse
    { permissions :: String
    , scopes :: [OAuth2Scopes]
    }
    deriving (Show, Eq, Generic)
