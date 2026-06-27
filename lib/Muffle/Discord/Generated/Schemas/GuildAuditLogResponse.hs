{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildAuditLogResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
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

instance FromJSON GuildAuditLogResponse where
    parseJSON = withObject "GuildAuditLogResponse" $ \o ->
        GuildAuditLogResponse <$>
            o .: "application_commands"
            <*> o .: "audit_log_entries"
            <*> o .: "auto_moderation_rules"
            <*> o .: "guild_scheduled_events"
            <*> o .: "integrations"
            <*> o .: "threads"
            <*> o .: "users"
            <*> o .: "webhooks"

newtype GuildAuditLogResponseAutoModerationRulesItem = GuildAuditLogResponseAutoModerationRulesItem (Maybe GuildAuditLogResponseAutoModerationRulesItemNullableInner)
    deriving (Show, Eq, Generic)

instance FromJSON GuildAuditLogResponseAutoModerationRulesItem where
    parseJSON v = GuildAuditLogResponseAutoModerationRulesItem <$> parseJSON v

data GuildAuditLogResponseAutoModerationRulesItemNullableInner = GuildAuditLogResponseAutoModerationRulesItemNullableInner0 DefaultKeywordRuleResponse | GuildAuditLogResponseAutoModerationRulesItemNullableInner1 KeywordRuleResponse | GuildAuditLogResponseAutoModerationRulesItemNullableInner2 MLSpamRuleResponse | GuildAuditLogResponseAutoModerationRulesItemNullableInner3 MentionSpamRuleResponse | GuildAuditLogResponseAutoModerationRulesItemNullableInner4 UserProfileRuleResponse
    deriving (Show, Eq, Generic)

instance FromJSON GuildAuditLogResponseAutoModerationRulesItemNullableInner where
    parseJSON v =
        GuildAuditLogResponseAutoModerationRulesItemNullableInner0 <$> parseJSON v
            <|> GuildAuditLogResponseAutoModerationRulesItemNullableInner1 <$> parseJSON v
            <|> GuildAuditLogResponseAutoModerationRulesItemNullableInner2 <$> parseJSON v
            <|> GuildAuditLogResponseAutoModerationRulesItemNullableInner3 <$> parseJSON v
            <|> GuildAuditLogResponseAutoModerationRulesItemNullableInner4 <$> parseJSON v

data GuildAuditLogResponseGuildScheduledEventsItem = GuildAuditLogResponseGuildScheduledEventsItem0 ExternalScheduledEventResponse | GuildAuditLogResponseGuildScheduledEventsItem1 StageScheduledEventResponse | GuildAuditLogResponseGuildScheduledEventsItem2 VoiceScheduledEventResponse
    deriving (Show, Eq, Generic)

instance FromJSON GuildAuditLogResponseGuildScheduledEventsItem where
    parseJSON v =
        GuildAuditLogResponseGuildScheduledEventsItem0 <$> parseJSON v
            <|> GuildAuditLogResponseGuildScheduledEventsItem1 <$> parseJSON v
            <|> GuildAuditLogResponseGuildScheduledEventsItem2 <$> parseJSON v

data GuildAuditLogResponseIntegrationsItem = GuildAuditLogResponseIntegrationsItem0 PartialDiscordIntegrationResponse | GuildAuditLogResponseIntegrationsItem1 PartialExternalConnectionIntegrationResponse | GuildAuditLogResponseIntegrationsItem2 PartialGuildSubscriptionIntegrationResponse
    deriving (Show, Eq, Generic)

instance FromJSON GuildAuditLogResponseIntegrationsItem where
    parseJSON v =
        GuildAuditLogResponseIntegrationsItem0 <$> parseJSON v
            <|> GuildAuditLogResponseIntegrationsItem1 <$> parseJSON v
            <|> GuildAuditLogResponseIntegrationsItem2 <$> parseJSON v

data GuildAuditLogResponseWebhooksItem = GuildAuditLogResponseWebhooksItem0 ApplicationIncomingWebhookResponse | GuildAuditLogResponseWebhooksItem1 ChannelFollowerWebhookResponse | GuildAuditLogResponseWebhooksItem2 GuildIncomingWebhookResponse
    deriving (Show, Eq, Generic)

instance FromJSON GuildAuditLogResponseWebhooksItem where
    parseJSON v =
        GuildAuditLogResponseWebhooksItem0 <$> parseJSON v
            <|> GuildAuditLogResponseWebhooksItem1 <$> parseJSON v
            <|> GuildAuditLogResponseWebhooksItem2 <$> parseJSON v