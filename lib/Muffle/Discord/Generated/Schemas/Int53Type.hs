{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.Int53Type where

import Data.Int (Int32, Int64)
import GHC.Generics


newtype Int53Type = Int53Type Int64
    deriving (Show, Eq, Generic)
