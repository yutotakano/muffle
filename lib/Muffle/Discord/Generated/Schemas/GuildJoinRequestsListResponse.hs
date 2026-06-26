{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildJoinRequestsListResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GuildJoinRequestResponse

data GuildJoinRequestsListResponse = GuildJoinRequestsListResponse
    { guildJoinRequests :: Maybe [GuildJoinRequestResponse]
    , total :: Maybe Int32
    }
    deriving (Show, Eq, Generic)
