{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.InnerErrors where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.Error

data InnerErrors = InnerErrors
    { aErrors :: [Error]
    }
    deriving (Show, Eq, Generic)
