{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CreateRoleRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.RoleColors

data CreateRoleRequest = CreateRoleRequest
    { color :: Maybe Integer
    , colors :: Maybe RoleColors
    , hoist :: Maybe Bool
    , icon :: Maybe String
    , mentionable :: Maybe Bool
    , name :: Maybe String
    , permissions :: Maybe Integer
    , unicodeEmoji :: Maybe String
    }
    deriving (Show, Eq, Generic)
