{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.VanityURLErrorResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data VanityURLErrorResponse = VanityURLErrorResponse
    { code :: Int32
    , message :: String
    }
    deriving (Show, Eq, Generic)
