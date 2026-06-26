{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CommandPermissionsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.CommandPermissionResponse

data CommandPermissionsResponse = CommandPermissionsResponse
    { applicationId :: SnowflakeType
    , guildId :: SnowflakeType
    , id :: SnowflakeType
    , permissions :: [CommandPermissionResponse]
    }
    deriving (Show, Eq, Generic)
