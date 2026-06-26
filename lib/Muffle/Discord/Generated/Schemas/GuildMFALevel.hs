{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildMFALevel where

import Data.Int (Int32, Int64)
import GHC.Generics


newtype GuildMFALevel = GuildMFALevel Int32
    deriving (Show, Eq, Generic)
