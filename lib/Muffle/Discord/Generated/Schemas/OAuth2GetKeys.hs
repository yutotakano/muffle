{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.OAuth2GetKeys where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.OAuth2Key

data OAuth2GetKeys = OAuth2GetKeys
    { keys :: [OAuth2Key]
    }
    deriving (Show, Eq, Generic)
