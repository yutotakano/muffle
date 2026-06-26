{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationOAuth2InstallParams where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.OAuth2Scopes

data ApplicationOAuth2InstallParams = ApplicationOAuth2InstallParams
    { permissions :: Maybe Integer
    , scopes :: [OAuth2Scopes]
    }
    deriving (Show, Eq, Generic)
