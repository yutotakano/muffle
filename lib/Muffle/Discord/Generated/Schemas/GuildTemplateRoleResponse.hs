{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildTemplateRoleResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.GuildTemplateRoleColorsResponse

data GuildTemplateRoleResponse = GuildTemplateRoleResponse
    { color :: Int32
    , colors :: Maybe GuildTemplateRoleColorsResponse
    , hoist :: Bool
    , icon :: Maybe String
    , id :: Int32
    , mentionable :: Bool
    , name :: String
    , permissions :: String
    , unicodeEmoji :: Maybe String
    }
    deriving (Show, Eq, Generic)
