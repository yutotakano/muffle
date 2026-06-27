{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.OAuth2Scopes where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data OAuth2Scopes = OAuth2ScopesIdentify | OAuth2ScopesEmail | OAuth2ScopesConnections | OAuth2ScopesGuilds | OAuth2ScopesGuildsJoin | OAuth2ScopesGuildsMembersRead | OAuth2ScopesGdmJoin | OAuth2ScopesBot | OAuth2ScopesRpc | OAuth2ScopesRpcNotificationsRead | OAuth2ScopesRpcVoiceRead | OAuth2ScopesRpcVoiceWrite | OAuth2ScopesRpcVideoRead | OAuth2ScopesRpcVideoWrite | OAuth2ScopesRpcScreenshareRead | OAuth2ScopesRpcScreenshareWrite | OAuth2ScopesRpcActivitiesWrite | OAuth2ScopesWebhookIncoming | OAuth2ScopesMessagesRead | OAuth2ScopesApplicationsBuildsUpload | OAuth2ScopesApplicationsBuildsRead | OAuth2ScopesApplicationsCommands | OAuth2ScopesApplicationsCommandsPermissionsUpdate | OAuth2ScopesApplicationsCommandsUpdate | OAuth2ScopesApplicationsStoreUpdate | OAuth2ScopesApplicationsEntitlements | OAuth2ScopesActivitiesRead | OAuth2ScopesActivitiesWrite | OAuth2ScopesActivitiesInvitesWrite | OAuth2ScopesRelationshipsRead | OAuth2ScopesVoice | OAuth2ScopesDmChannelsRead | OAuth2ScopesRoleConnectionsWrite | OAuth2ScopesOpenid
    deriving (Show, Eq, Generic)

instance FromJSON OAuth2Scopes where
    parseJSON v = case v of
        "identify" -> pure OAuth2ScopesIdentify
        "email" -> pure OAuth2ScopesEmail
        "connections" -> pure OAuth2ScopesConnections
        "guilds" -> pure OAuth2ScopesGuilds
        "guilds.join" -> pure OAuth2ScopesGuildsJoin
        "guilds.members.read" -> pure OAuth2ScopesGuildsMembersRead
        "gdm.join" -> pure OAuth2ScopesGdmJoin
        "bot" -> pure OAuth2ScopesBot
        "rpc" -> pure OAuth2ScopesRpc
        "rpc.notifications.read" -> pure OAuth2ScopesRpcNotificationsRead
        "rpc.voice.read" -> pure OAuth2ScopesRpcVoiceRead
        "rpc.voice.write" -> pure OAuth2ScopesRpcVoiceWrite
        "rpc.video.read" -> pure OAuth2ScopesRpcVideoRead
        "rpc.video.write" -> pure OAuth2ScopesRpcVideoWrite
        "rpc.screenshare.read" -> pure OAuth2ScopesRpcScreenshareRead
        "rpc.screenshare.write" -> pure OAuth2ScopesRpcScreenshareWrite
        "rpc.activities.write" -> pure OAuth2ScopesRpcActivitiesWrite
        "webhook.incoming" -> pure OAuth2ScopesWebhookIncoming
        "messages.read" -> pure OAuth2ScopesMessagesRead
        "applications.builds.upload" -> pure OAuth2ScopesApplicationsBuildsUpload
        "applications.builds.read" -> pure OAuth2ScopesApplicationsBuildsRead
        "applications.commands" -> pure OAuth2ScopesApplicationsCommands
        "applications.commands.permissions.update" -> pure OAuth2ScopesApplicationsCommandsPermissionsUpdate
        "applications.commands.update" -> pure OAuth2ScopesApplicationsCommandsUpdate
        "applications.store.update" -> pure OAuth2ScopesApplicationsStoreUpdate
        "applications.entitlements" -> pure OAuth2ScopesApplicationsEntitlements
        "activities.read" -> pure OAuth2ScopesActivitiesRead
        "activities.write" -> pure OAuth2ScopesActivitiesWrite
        "activities.invites.write" -> pure OAuth2ScopesActivitiesInvitesWrite
        "relationships.read" -> pure OAuth2ScopesRelationshipsRead
        "voice" -> pure OAuth2ScopesVoice
        "dm_channels.read" -> pure OAuth2ScopesDmChannelsRead
        "role_connections.write" -> pure OAuth2ScopesRoleConnectionsWrite
        "openid" -> pure OAuth2ScopesOpenid
        _ -> fail "Expected one of the constants in the oneOf schema"