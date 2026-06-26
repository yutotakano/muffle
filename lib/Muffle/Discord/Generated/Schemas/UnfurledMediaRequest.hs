{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UnfurledMediaRequest where

import Data.Int (Int32, Int64)
import GHC.Generics


data UnfurledMediaRequest = UnfurledMediaRequest
    { url :: String
    }
    deriving (Show, Eq, Generic)
