{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.TeamMemberResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.TeamMembershipStates
import Muffle.Discord.Generated.Schemas.TeamMemberRoles
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UserResponse

data TeamMemberResponse = TeamMemberResponse
    { membershipState :: TeamMembershipStates
    , permissions :: [String]
    , role :: TeamMemberRoles
    , teamId :: SnowflakeType
    , user :: UserResponse
    }
    deriving (Show, Eq, Generic)
