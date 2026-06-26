{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildInviteResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
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
