{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.TeamMemberRoles where

import Data.Int (Int32, Int64)
import GHC.Generics


data TeamMemberRoles = TeamMemberRolesAdmin | TeamMemberRolesDeveloper | TeamMemberRolesReadOnly
    deriving (Show, Eq, Generic)
