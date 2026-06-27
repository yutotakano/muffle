{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.KeywordRuleResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.AutomodEventType
import Muffle.Discord.Generated.Schemas.KeywordTriggerMetadataResponse
import Muffle.Discord.Generated.Schemas.AutomodTriggerType
import Muffle.Discord.Generated.Schemas.BlockMessageActionResponse
import Muffle.Discord.Generated.Schemas.FlagToChannelActionResponse
import Muffle.Discord.Generated.Schemas.QuarantineUserActionResponse
import Muffle.Discord.Generated.Schemas.UserCommunicationDisabledActionResponse

data KeywordRuleResponse = KeywordRuleResponse
    { actions :: [KeywordRuleResponseActionsItem]
    , creatorId :: SnowflakeType
    , enabled :: Bool
    , eventType :: AutomodEventType
    , exemptChannels :: [SnowflakeType]
    , exemptRoles :: [SnowflakeType]
    , guildId :: SnowflakeType
    , id :: SnowflakeType
    , name :: String
    , triggerMetadata :: KeywordTriggerMetadataResponse
    , triggerType :: AutomodTriggerType
    }
    deriving (Show, Eq, Generic)

instance FromJSON KeywordRuleResponse where
    parseJSON = withObject "KeywordRuleResponse" $ \o ->
        KeywordRuleResponse <$>
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

data KeywordRuleResponseActionsItem = KeywordRuleResponseActionsItem0 BlockMessageActionResponse | KeywordRuleResponseActionsItem1 FlagToChannelActionResponse | KeywordRuleResponseActionsItem2 QuarantineUserActionResponse | KeywordRuleResponseActionsItem3 UserCommunicationDisabledActionResponse
    deriving (Show, Eq, Generic)

instance FromJSON KeywordRuleResponseActionsItem where
    parseJSON v =
        KeywordRuleResponseActionsItem0 <$> parseJSON v
            <|> KeywordRuleResponseActionsItem1 <$> parseJSON v
            <|> KeywordRuleResponseActionsItem2 <$> parseJSON v
            <|> KeywordRuleResponseActionsItem3 <$> parseJSON v