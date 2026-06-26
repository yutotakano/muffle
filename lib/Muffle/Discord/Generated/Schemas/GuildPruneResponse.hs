{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildPruneResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data GuildPruneResponse = GuildPruneResponse
    { pruned :: Maybe Int32
    }
    deriving (Show, Eq, Generic)
