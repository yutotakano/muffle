{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildPatchRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
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

instance FromJSON GuildPatchRequestPartial where
    parseJSON = withObject "GuildPatchRequestPartial" $ \o ->
        GuildPatchRequestPartial <$>
            o .: "afk_channel_id"
            <*> o .: "afk_timeout"
            <*> o .: "banner"
            <*> o .: "default_message_notifications"
            <*> o .: "description"
            <*> o .: "discovery_splash"
            <*> o .: "explicit_content_filter"
            <*> o .: "features"
            <*> o .: "home_header"
            <*> o .: "icon"
            <*> o .: "name"
            <*> o .: "preferred_locale"
            <*> o .: "premium_progress_bar_enabled"
            <*> o .: "public_updates_channel_id"
            <*> o .: "region"
            <*> o .: "rules_channel_id"
            <*> o .: "safety_alerts_channel_id"
            <*> o .: "splash"
            <*> o .: "system_channel_flags"
            <*> o .: "system_channel_id"
            <*> o .: "verification_level"