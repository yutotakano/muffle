{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
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

data GuildResponse = GuildResponse
    { afkChannelId :: Maybe SnowflakeType
    , afkTimeout :: AfkTimeouts
    , applicationId :: Maybe SnowflakeType
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
    , premiumProgressBarEnabledUserUpdatedAt :: Maybe (Maybe String)
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

instance FromJSON GuildResponse where
    parseJSON = withObject "GuildResponse" $ \o ->
        GuildResponse <$>
            o .: "afk_channel_id"
            <*> o .: "afk_timeout"
            <*> o .: "application_id"
            <*> o .: "banner"
            <*> o .: "default_message_notifications"
            <*> o .: "description"
            <*> o .: "discovery_splash"
            <*> o .: "emojis"
            <*> o .: "explicit_content_filter"
            <*> o .: "features"
            <*> o .: "home_header"
            <*> o .: "icon"
            <*> o .: "id"
            <*> o .: "incidents_data"
            <*> o .: "max_members"
            <*> o .: "max_presences"
            <*> o .: "max_stage_video_channel_users"
            <*> o .: "max_video_channel_users"
            <*> o .: "mfa_level"
            <*> o .: "name"
            <*> o .: "nsfw"
            <*> o .: "nsfw_level"
            <*> o .: "owner_id"
            <*> o .: "preferred_locale"
            <*> o .: "premium_progress_bar_enabled"
            <*> o .: "premium_progress_bar_enabled_user_updated_at"
            <*> o .: "premium_subscription_count"
            <*> o .: "premium_tier"
            <*> o .: "public_updates_channel_id"
            <*> o .: "region"
            <*> o .: "roles"
            <*> o .: "rules_channel_id"
            <*> o .: "safety_alerts_channel_id"
            <*> o .: "splash"
            <*> o .: "stickers"
            <*> o .: "system_channel_flags"
            <*> o .: "system_channel_id"
            <*> o .: "vanity_url_code"
            <*> o .: "verification_level"
            <*> o .: "widget_channel_id"
            <*> o .: "widget_enabled"