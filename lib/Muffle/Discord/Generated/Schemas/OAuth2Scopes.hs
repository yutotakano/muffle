{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.OAuth2Scopes where

import Data.Int (Int32, Int64)
import GHC.Generics


data OAuth2Scopes = OAuth2ScopesIdentify | OAuth2ScopesEmail | OAuth2ScopesConnections | OAuth2ScopesGuilds | OAuth2ScopesGuildsJoin | OAuth2ScopesGuildsMembersRead | OAuth2ScopesGdmJoin | OAuth2ScopesBot | OAuth2ScopesRpc | OAuth2ScopesRpcNotificationsRead | OAuth2ScopesRpcVoiceRead | OAuth2ScopesRpcVoiceWrite | OAuth2ScopesRpcVideoRead | OAuth2ScopesRpcVideoWrite | OAuth2ScopesRpcScreenshareRead | OAuth2ScopesRpcScreenshareWrite | OAuth2ScopesRpcActivitiesWrite | OAuth2ScopesWebhookIncoming | OAuth2ScopesMessagesRead | OAuth2ScopesApplicationsBuildsUpload | OAuth2ScopesApplicationsBuildsRead | OAuth2ScopesApplicationsCommands | OAuth2ScopesApplicationsCommandsPermissionsUpdate | OAuth2ScopesApplicationsCommandsUpdate | OAuth2ScopesApplicationsStoreUpdate | OAuth2ScopesApplicationsEntitlements | OAuth2ScopesActivitiesRead | OAuth2ScopesActivitiesWrite | OAuth2ScopesActivitiesInvitesWrite | OAuth2ScopesRelationshipsRead | OAuth2ScopesVoice | OAuth2ScopesDmChannelsRead | OAuth2ScopesRoleConnectionsWrite | OAuth2ScopesOpenid
    deriving (Show, Eq, Generic)
