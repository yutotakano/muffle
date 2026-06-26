{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.Error where

import Data.Int (Int32, Int64)
import GHC.Generics


data Error = Error
    { code :: Integer
    , message :: String
    }
    deriving (Show, Eq, Generic)
