{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildJoinRequestApplicationStatus where

import Data.Int (Int32, Int64)
import GHC.Generics


data GuildJoinRequestApplicationStatus = GuildJoinRequestApplicationStatusSTARTED | GuildJoinRequestApplicationStatusSUBMITTED | GuildJoinRequestApplicationStatusREJECTED | GuildJoinRequestApplicationStatusAPPROVED
    deriving (Show, Eq, Generic)
