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
    { approximateMemberCount :: Maybe Int32
    , approximatePresenceCount :: Maybe Int32
    , channel :: InviteChannelResponse
    , code :: String
    , createdAt :: String
    , expiresAt :: Maybe String
    , flags :: Int32
    , guild :: InviteGuildResponse
    , guildId :: SnowflakeType
    , guildScheduledEvent :: ScheduledEventResponse
    , inviter :: UserResponse
    , isContact :: Bool
    , isNicknameChangeable :: Bool
    , maxAge :: Int32
    , maxUses :: Int32
    , roles :: [InviteGuildRoleResponse]
    , targetApplication :: InviteApplicationResponse
    , targetChannelId :: SnowflakeType
    , targetMessageId :: SnowflakeType
    , targetType :: InviteTargetTypes
    , targetUser :: UserResponse
    , temporary :: Bool
    , type' :: InviteTypes
    , uses :: Int32
    }
    deriving (Show, Eq, Generic)
