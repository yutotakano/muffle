{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.OAuth2Key where

import Data.Int (Int32, Int64)
import GHC.Generics


data OAuth2Key = OAuth2Key
    { alg :: String
    , e :: String
    , kid :: String
    , kty :: String
    , n :: String
    , use :: String
    }
    deriving (Show, Eq, Generic)
