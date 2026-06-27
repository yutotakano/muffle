{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildInviteResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.InviteChannelResponse
import Muffle.Discord.Generated.Schemas.InviteGuildResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.ScheduledEventResponse
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.InviteGuildRoleResponse
import Muffle.Discord.Generated.Schemas.InviteApplicationResponse
import Muffle.Discord.Generated.Schemas.InviteTargetTypes
import Muffle.Discord.Generated.Schemas.InviteTypes

data GuildInviteResponse = GuildInviteResponse
    { approximateMemberCount :: Maybe (Maybe Int32)
    , approximatePresenceCount :: Maybe (Maybe Int32)
    , channel :: InviteChannelResponse
    , code :: String
    , createdAt :: Maybe String
    , expiresAt :: Maybe String
    , flags :: Maybe Int32
    , guild :: InviteGuildResponse
    , guildId :: SnowflakeType
    , guildScheduledEvent :: Maybe ScheduledEventResponse
    , inviter :: Maybe UserResponse
    , isContact :: Maybe Bool
    , isNicknameChangeable :: Maybe Bool
    , maxAge :: Maybe Int32
    , maxUses :: Maybe Int32
    , roles :: Maybe [InviteGuildRoleResponse]
    , targetApplication :: Maybe InviteApplicationResponse
    , targetChannelId :: Maybe SnowflakeType
    , targetMessageId :: Maybe SnowflakeType
    , targetType :: Maybe InviteTargetTypes
    , targetUser :: Maybe UserResponse
    , temporary :: Maybe Bool
    , type' :: InviteTypes
    , uses :: Maybe Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildInviteResponse where
    parseJSON = withObject "GuildInviteResponse" $ \o ->
        GuildInviteResponse <$>
            o .: "approximate_member_count"
            <*> o .: "approximate_presence_count"
            <*> o .: "channel"
            <*> o .: "code"
            <*> o .: "created_at"
            <*> o .: "expires_at"
            <*> o .: "flags"
            <*> o .: "guild"
            <*> o .: "guild_id"
            <*> o .: "guild_scheduled_event"
            <*> o .: "inviter"
            <*> o .: "is_contact"
            <*> o .: "is_nickname_changeable"
            <*> o .: "max_age"
            <*> o .: "max_uses"
            <*> o .: "roles"
            <*> o .: "target_application"
            <*> o .: "target_channel_id"
            <*> o .: "target_message_id"
            <*> o .: "target_type"
            <*> o .: "target_user"
            <*> o .: "temporary"
            <*> o .: "type"
            <*> o .: "uses"