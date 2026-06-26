{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildRoleColorsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data GuildRoleColorsResponse = GuildRoleColorsResponse
    { primaryColor :: Int32
    , secondaryColor :: Maybe Int32
    , tertiaryColor :: Maybe Int32
    }
    deriving (Show, Eq, Generic)
