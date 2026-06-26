{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.InviteGuildRoleResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GuildRoleColorsResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType

data InviteGuildRoleResponse = InviteGuildRoleResponse
    { color :: Int32
    , colors :: GuildRoleColorsResponse
    , icon :: Maybe String
    , id :: SnowflakeType
    , name :: String
    , permissions :: String
    , position :: Int32
    , unicodeEmoji :: Maybe String
    }
    deriving (Show, Eq, Generic)
