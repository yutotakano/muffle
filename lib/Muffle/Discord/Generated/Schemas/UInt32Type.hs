{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UInt32Type where

import Data.Int (Int32, Int64)
import GHC.Generics


newtype UInt32Type = UInt32Type Int64
    deriving (Show, Eq, Generic)
