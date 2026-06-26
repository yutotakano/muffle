{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildWithCountsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.AfkTimeouts
import Muffle.Discord.Generated.Schemas.UserNotificationSettings
import Muffle.Discord.Generated.Schemas.EmojiResponse
import Muffle.Discord.Generated.Schemas.GuildExplicitContentFilterTypes
import Muffle.Discord.Generated.Schemas.GuildFeatures
import Muffle.Discord.Generated.Schemas.GuildIncidentsDataResponse
import Muffle.Discord.Generated.Schemas.GuildMFALevel
import Muffle.Discord.Generated.Schemas.GuildNSFWContentLevel
import Muffle.Discord.Generated.Schemas.AvailableLocalesEnum
import Muffle.Discord.Generated.Schemas.PremiumGuildTiers
import Muffle.Discord.Generated.Schemas.GuildRoleResponse
import Muffle.Discord.Generated.Schemas.GuildStickerResponse
import Muffle.Discord.Generated.Schemas.VerificationLevels

data GuildWithCountsResponse = GuildWithCountsResponse
    { afkChannelId :: Maybe SnowflakeType
    , afkTimeout :: AfkTimeouts
    , applicationId :: Maybe SnowflakeType
    , approximateMemberCount :: Maybe Int32
    , approximatePresenceCount :: Maybe Int32
    , banner :: Maybe String
    , defaultMessageNotifications :: UserNotificationSettings
    , description :: Maybe String
    , discoverySplash :: Maybe String
    , emojis :: [EmojiResponse]
    , explicitContentFilter :: GuildExplicitContentFilterTypes
    , features :: [GuildFeatures]
    , homeHeader :: Maybe String
    , icon :: Maybe String
    , id :: SnowflakeType
    , incidentsData :: Maybe GuildIncidentsDataResponse
    , maxMembers :: Int32
    , maxPresences :: Maybe Int32
    , maxStageVideoChannelUsers :: Int32
    , maxVideoChannelUsers :: Int32
    , mfaLevel :: GuildMFALevel
    , name :: String
    , nsfw :: Bool
    , nsfwLevel :: GuildNSFWContentLevel
    , ownerId :: SnowflakeType
    , preferredLocale :: AvailableLocalesEnum
    , premiumProgressBarEnabled :: Bool
    , premiumProgressBarEnabledUserUpdatedAt :: Maybe String
    , premiumSubscriptionCount :: Int32
    , premiumTier :: PremiumGuildTiers
    , publicUpdatesChannelId :: Maybe SnowflakeType
    , region :: String
    , roles :: [GuildRoleResponse]
    , rulesChannelId :: Maybe SnowflakeType
    , safetyAlertsChannelId :: Maybe SnowflakeType
    , splash :: Maybe String
    , stickers :: [GuildStickerResponse]
    , systemChannelFlags :: Int32
    , systemChannelId :: Maybe SnowflakeType
    , vanityUrlCode :: Maybe String
    , verificationLevel :: VerificationLevels
    , widgetChannelId :: Maybe SnowflakeType
    , widgetEnabled :: Bool
    }
    deriving (Show, Eq, Generic)
