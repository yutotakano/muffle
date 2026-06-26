{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.LobbyGuildInviteResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data LobbyGuildInviteResponse = LobbyGuildInviteResponse
    { code :: String
    }
    deriving (Show, Eq, Generic)
