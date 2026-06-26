{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildAuditLogResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandResponse
import Muffle.Discord.Generated.Schemas.AuditLogEntryResponse
import Muffle.Discord.Generated.Schemas.ThreadResponse
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.DefaultKeywordRuleResponse
import Muffle.Discord.Generated.Schemas.KeywordRuleResponse
import Muffle.Discord.Generated.Schemas.MLSpamRuleResponse
import Muffle.Discord.Generated.Schemas.MentionSpamRuleResponse
import Muffle.Discord.Generated.Schemas.UserProfileRuleResponse
import Muffle.Discord.Generated.Schemas.ExternalScheduledEventResponse
import Muffle.Discord.Generated.Schemas.StageScheduledEventResponse
import Muffle.Discord.Generated.Schemas.VoiceScheduledEventResponse
import Muffle.Discord.Generated.Schemas.PartialDiscordIntegrationResponse
import Muffle.Discord.Generated.Schemas.PartialExternalConnectionIntegrationResponse
import Muffle.Discord.Generated.Schemas.PartialGuildSubscriptionIntegrationResponse
import Muffle.Discord.Generated.Schemas.ApplicationIncomingWebhookResponse
import Muffle.Discord.Generated.Schemas.ChannelFollowerWebhookResponse
import Muffle.Discord.Generated.Schemas.GuildIncomingWebhookResponse

data GuildAuditLogResponse = GuildAuditLogResponse
    { applicationCommands :: [ApplicationCommandResponse]
    , auditLogEntries :: [AuditLogEntryResponse]
    , autoModerationRules :: [GuildAuditLogResponseAutoModerationRulesItem]
    , guildScheduledEvents :: [GuildAuditLogResponseGuildScheduledEventsItem]
    , integrations :: [GuildAuditLogResponseIntegrationsItem]
    , threads :: [ThreadResponse]
    , users :: [UserResponse]
    , webhooks :: [GuildAuditLogResponseWebhooksItem]
    }
    deriving (Show, Eq, Generic)
newtype GuildAuditLogResponseAutoModerationRulesItem = GuildAuditLogResponseAutoModerationRulesItem (Maybe GuildAuditLogResponseAutoModerationRulesItemNullableInner)
    deriving (Show, Eq, Generic)
data GuildAuditLogResponseAutoModerationRulesItemNullableInner = GuildAuditLogResponseAutoModerationRulesItemNullableInner0 DefaultKeywordRuleResponse | GuildAuditLogResponseAutoModerationRulesItemNullableInner1 KeywordRuleResponse | GuildAuditLogResponseAutoModerationRulesItemNullableInner2 MLSpamRuleResponse | GuildAuditLogResponseAutoModerationRulesItemNullableInner3 MentionSpamRuleResponse | GuildAuditLogResponseAutoModerationRulesItemNullableInner4 UserProfileRuleResponse
    deriving (Show, Eq, Generic)
data GuildAuditLogResponseGuildScheduledEventsItem = GuildAuditLogResponseGuildScheduledEventsItem0 ExternalScheduledEventResponse | GuildAuditLogResponseGuildScheduledEventsItem1 StageScheduledEventResponse | GuildAuditLogResponseGuildScheduledEventsItem2 VoiceScheduledEventResponse
    deriving (Show, Eq, Generic)
data GuildAuditLogResponseIntegrationsItem = GuildAuditLogResponseIntegrationsItem0 PartialDiscordIntegrationResponse | GuildAuditLogResponseIntegrationsItem1 PartialExternalConnectionIntegrationResponse | GuildAuditLogResponseIntegrationsItem2 PartialGuildSubscriptionIntegrationResponse
    deriving (Show, Eq, Generic)
data GuildAuditLogResponseWebhooksItem = GuildAuditLogResponseWebhooksItem0 ApplicationIncomingWebhookResponse | GuildAuditLogResponseWebhooksItem1 ChannelFollowerWebhookResponse | GuildAuditLogResponseWebhooksItem2 GuildIncomingWebhookResponse
    deriving (Show, Eq, Generic)
