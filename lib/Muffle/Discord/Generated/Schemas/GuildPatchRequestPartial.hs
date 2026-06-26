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
    { afkChannelId :: Maybe (Maybe SnowflakeType)
    , afkTimeout :: Maybe (Maybe AfkTimeouts)
    , banner :: Maybe (Maybe String)
    , defaultMessageNotifications :: Maybe (Maybe UserNotificationSettings)
    , description :: Maybe (Maybe String)
    , discoverySplash :: Maybe (Maybe String)
    , explicitContentFilter :: Maybe (Maybe GuildExplicitContentFilterTypes)
    , features :: Maybe ([Maybe String])
    , homeHeader :: Maybe (Maybe String)
    , icon :: Maybe (Maybe String)
    , name :: Maybe String
    , preferredLocale :: Maybe (Maybe AvailableLocalesEnum)
    , premiumProgressBarEnabled :: Maybe (Maybe Bool)
    , publicUpdatesChannelId :: Maybe (Maybe SnowflakeType)
    , region :: Maybe (Maybe String)
    , rulesChannelId :: Maybe (Maybe SnowflakeType)
    , safetyAlertsChannelId :: Maybe (Maybe SnowflakeType)
    , splash :: Maybe (Maybe String)
    , systemChannelFlags :: Maybe (Maybe Integer)
    , systemChannelId :: Maybe (Maybe SnowflakeType)
    , verificationLevel :: Maybe (Maybe VerificationLevels)
    }
    deriving (Show, Eq, Generic)
