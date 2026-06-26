{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildRoleResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GuildRoleColorsResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.GuildRoleTagsResponse

data GuildRoleResponse = GuildRoleResponse
    { color :: Int32
    , colors :: GuildRoleColorsResponse
    , flags :: Int32
    , hoist :: Bool
    , icon :: Maybe String
    , id :: SnowflakeType
    , managed :: Bool
    , mentionable :: Bool
    , name :: String
    , permissions :: String
    , position :: Int32
    , tags :: GuildRoleTagsResponse
    , unicodeEmoji :: Maybe String
    }
    deriving (Show, Eq, Generic)
