{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildTemplateSnapshotResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.AfkTimeouts
import Muffle.Discord.Generated.Schemas.GuildTemplateChannelResponse
import Muffle.Discord.Generated.Schemas.UserNotificationSettings
import Muffle.Discord.Generated.Schemas.GuildExplicitContentFilterTypes
import Muffle.Discord.Generated.Schemas.AvailableLocalesEnum
import Muffle.Discord.Generated.Schemas.GuildTemplateRoleResponse
import Muffle.Discord.Generated.Schemas.VerificationLevels

data GuildTemplateSnapshotResponse = GuildTemplateSnapshotResponse
    { afkChannelId :: Maybe SnowflakeType
    , afkTimeout :: AfkTimeouts
    , channels :: [GuildTemplateChannelResponse]
    , defaultMessageNotifications :: UserNotificationSettings
    , description :: Maybe String
    , explicitContentFilter :: GuildExplicitContentFilterTypes
    , name :: String
    , preferredLocale :: AvailableLocalesEnum
    , region :: Maybe String
    , roles :: [GuildTemplateRoleResponse]
    , systemChannelFlags :: Int32
    , systemChannelId :: Maybe SnowflakeType
    , verificationLevel :: VerificationLevels
    }
    deriving (Show, Eq, Generic)
