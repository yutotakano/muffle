{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ProvisionalTokenResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data ProvisionalTokenResponse = ProvisionalTokenResponse
    { accessToken :: String
    , expiresAtS :: Maybe Int32
    , expiresIn :: Int32
    , idToken :: String
    , refreshToken :: Maybe String
    , scope :: String
    , scopes :: [String]
    , tokenType :: String
    }
    deriving (Show, Eq, Generic)
