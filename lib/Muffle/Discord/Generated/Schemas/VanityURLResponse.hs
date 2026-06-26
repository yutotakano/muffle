{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.VanityURLResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.VanityURLErrorResponse

data VanityURLResponse = VanityURLResponse
    { code :: Maybe String
    , error :: Maybe VanityURLErrorResponse
    , uses :: Int32
    }
    deriving (Show, Eq, Generic)
