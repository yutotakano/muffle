{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CreateRoleRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.RoleColors

data CreateRoleRequest = CreateRoleRequest
    { color :: Maybe (Maybe Integer)
    , colors :: Maybe (Maybe RoleColors)
    , hoist :: Maybe (Maybe Bool)
    , icon :: Maybe (Maybe String)
    , mentionable :: Maybe (Maybe Bool)
    , name :: Maybe (Maybe String)
    , permissions :: Maybe (Maybe Integer)
    , unicodeEmoji :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)
