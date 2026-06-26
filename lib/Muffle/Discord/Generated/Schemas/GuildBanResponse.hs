{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildBanResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UserResponse

data GuildBanResponse = GuildBanResponse
    { reason :: Maybe String
    , user :: UserResponse
    }
    deriving (Show, Eq, Generic)
