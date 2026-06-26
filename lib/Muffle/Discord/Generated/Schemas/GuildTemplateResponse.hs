{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildTemplateResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.GuildTemplateSnapshotResponse

data GuildTemplateResponse = GuildTemplateResponse
    { code :: String
    , createdAt :: String
    , creator :: Maybe UserResponse
    , creatorId :: SnowflakeType
    , description :: Maybe String
    , isDirty :: Maybe Bool
    , name :: String
    , serializedSourceGuild :: GuildTemplateSnapshotResponse
    , sourceGuildId :: SnowflakeType
    , updatedAt :: String
    , usageCount :: Int32
    }
    deriving (Show, Eq, Generic)
