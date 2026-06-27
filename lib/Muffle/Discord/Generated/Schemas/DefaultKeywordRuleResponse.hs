{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.DefaultKeywordRuleResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.AutomodEventType
import Muffle.Discord.Generated.Schemas.DefaultKeywordListTriggerMetadataResponse
import Muffle.Discord.Generated.Schemas.AutomodTriggerType
import Muffle.Discord.Generated.Schemas.BlockMessageActionResponse
import Muffle.Discord.Generated.Schemas.FlagToChannelActionResponse
import Muffle.Discord.Generated.Schemas.QuarantineUserActionResponse
import Muffle.Discord.Generated.Schemas.UserCommunicationDisabledActionResponse

data DefaultKeywordRuleResponse = DefaultKeywordRuleResponse
    { actions :: [DefaultKeywordRuleResponseActionsItem]
    , creatorId :: SnowflakeType
    , enabled :: Bool
    , eventType :: AutomodEventType
    , exemptChannels :: [SnowflakeType]
    , exemptRoles :: [SnowflakeType]
    , guildId :: SnowflakeType
    , id :: SnowflakeType
    , name :: String
    , triggerMetadata :: DefaultKeywordListTriggerMetadataResponse
    , triggerType :: AutomodTriggerType
    }
    deriving (Show, Eq, Generic)

instance FromJSON DefaultKeywordRuleResponse where
    parseJSON = withObject "DefaultKeywordRuleResponse" $ \o ->
        DefaultKeywordRuleResponse <$>
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

data DefaultKeywordRuleResponseActionsItem = DefaultKeywordRuleResponseActionsItem0 BlockMessageActionResponse | DefaultKeywordRuleResponseActionsItem1 FlagToChannelActionResponse | DefaultKeywordRuleResponseActionsItem2 QuarantineUserActionResponse | DefaultKeywordRuleResponseActionsItem3 UserCommunicationDisabledActionResponse
    deriving (Show, Eq, Generic)

instance FromJSON DefaultKeywordRuleResponseActionsItem where
    parseJSON v =
        DefaultKeywordRuleResponseActionsItem0 <$> parseJSON v
            <|> DefaultKeywordRuleResponseActionsItem1 <$> parseJSON v
            <|> DefaultKeywordRuleResponseActionsItem2 <$> parseJSON v
            <|> DefaultKeywordRuleResponseActionsItem3 <$> parseJSON v