{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageType where

import Data.Int (Int32, Int64)
import GHC.Generics


newtype MessageType = MessageType Int32
    deriving (Show, Eq, Generic)
