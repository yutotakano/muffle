{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.TeamMemberRoles where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data TeamMemberRoles = TeamMemberRolesAdmin | TeamMemberRolesDeveloper | TeamMemberRolesReadOnly
    deriving (Show, Eq, Generic)

instance FromJSON TeamMemberRoles where
    parseJSON v = case v of
        "admin" -> pure TeamMemberRolesAdmin
        "developer" -> pure TeamMemberRolesDeveloper
        "read_only" -> pure TeamMemberRolesReadOnly
        _ -> fail "Expected one of the constants in the oneOf schema"