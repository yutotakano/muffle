{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MentionSpamRuleResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.AutomodEventType
import Muffle.Discord.Generated.Schemas.MentionSpamTriggerMetadataResponse
import Muffle.Discord.Generated.Schemas.AutomodTriggerType
import Muffle.Discord.Generated.Schemas.BlockMessageActionResponse
import Muffle.Discord.Generated.Schemas.FlagToChannelActionResponse
import Muffle.Discord.Generated.Schemas.QuarantineUserActionResponse
import Muffle.Discord.Generated.Schemas.UserCommunicationDisabledActionResponse

data MentionSpamRuleResponse = MentionSpamRuleResponse
    { actions :: [MentionSpamRuleResponseActionsItem]
    , creatorId :: SnowflakeType
    , enabled :: Bool
    , eventType :: AutomodEventType
    , exemptChannels :: [SnowflakeType]
    , exemptRoles :: [SnowflakeType]
    , guildId :: SnowflakeType
    , id :: SnowflakeType
    , name :: String
    , triggerMetadata :: MentionSpamTriggerMetadataResponse
    , triggerType :: AutomodTriggerType
    }
    deriving (Show, Eq, Generic)

instance FromJSON MentionSpamRuleResponse where
    parseJSON = withObject "MentionSpamRuleResponse" $ \o ->
        MentionSpamRuleResponse <$>
            o .: "actions"
            <*> o .: "creator_id"
            <*> o .: "enabled"
            <*> o .: "event_type"
            <*> o .: "exempt_channels"
            <*> o .: "exempt_roles"
            <*> o .: "guild_id"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "trigger_metadata"
            <*> o .: "trigger_type"

data MentionSpamRuleResponseActionsItem = MentionSpamRuleResponseActionsItem0 BlockMessageActionResponse | MentionSpamRuleResponseActionsItem1 FlagToChannelActionResponse | MentionSpamRuleResponseActionsItem2 QuarantineUserActionResponse | MentionSpamRuleResponseActionsItem3 UserCommunicationDisabledActionResponse
    deriving (Show, Eq, Generic)

instance FromJSON MentionSpamRuleResponseActionsItem where
    parseJSON v =
        MentionSpamRuleResponseActionsItem0 <$> parseJSON v
            <|> MentionSpamRuleResponseActionsItem1 <$> parseJSON v
            <|> MentionSpamRuleResponseActionsItem2 <$> parseJSON v
            <|> MentionSpamRuleResponseActionsItem3 <$> parseJSON v