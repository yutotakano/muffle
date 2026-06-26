{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildPatchRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.AfkTimeouts
import Muffle.Discord.Generated.Schemas.UserNotificationSettings
import Muffle.Discord.Generated.Schemas.GuildExplicitContentFilterTypes
import Muffle.Discord.Generated.Schemas.AvailableLocalesEnum
import Muffle.Discord.Generated.Schemas.VerificationLevels

data GuildPatchRequestPartial = GuildPatchRequestPartial
    { afkChannelId :: Maybe SnowflakeType
    , afkTimeout :: Maybe AfkTimeouts
    , banner :: Maybe String
    , defaultMessageNotifications :: Maybe UserNotificationSettings
    , description :: Maybe String
    , discoverySplash :: Maybe String
    , explicitContentFilter :: Maybe GuildExplicitContentFilterTypes
    , features :: [Maybe String]
    , homeHeader :: Maybe String
    , icon :: Maybe String
    , name :: String
    , preferredLocale :: Maybe AvailableLocalesEnum
    , premiumProgressBarEnabled :: Maybe Bool
    , publicUpdatesChannelId :: Maybe SnowflakeType
    , region :: Maybe String
    , rulesChannelId :: Maybe SnowflakeType
    , safetyAlertsChannelId :: Maybe SnowflakeType
    , splash :: Maybe String
    , systemChannelFlags :: Maybe Integer
    , systemChannelId :: Maybe SnowflakeType
    , verificationLevel :: Maybe VerificationLevels
    }
    deriving (Show, Eq, Generic)
