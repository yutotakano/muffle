{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MLSpamRuleResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.AutomodEventType
import Muffle.Discord.Generated.Schemas.MLSpamTriggerMetadataResponse
import Muffle.Discord.Generated.Schemas.AutomodTriggerType
import Muffle.Discord.Generated.Schemas.BlockMessageActionResponse
import Muffle.Discord.Generated.Schemas.FlagToChannelActionResponse
import Muffle.Discord.Generated.Schemas.QuarantineUserActionResponse
import Muffle.Discord.Generated.Schemas.UserCommunicationDisabledActionResponse

data MLSpamRuleResponse = MLSpamRuleResponse
    { actions :: [MLSpamRuleResponseActionsItem]
    , creatorId :: SnowflakeType
    , enabled :: Bool
    , eventType :: AutomodEventType
    , exemptChannels :: [SnowflakeType]
    , exemptRoles :: [SnowflakeType]
    , guildId :: SnowflakeType
    , id :: SnowflakeType
    , name :: String
    , triggerMetadata :: MLSpamTriggerMetadataResponse
    , triggerType :: AutomodTriggerType
    }
    deriving (Show, Eq, Generic)

instance FromJSON MLSpamRuleResponse where
    parseJSON = withObject "MLSpamRuleResponse" $ \o ->
        MLSpamRuleResponse <$>
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

data MLSpamRuleResponseActionsItem = MLSpamRuleResponseActionsItem0 BlockMessageActionResponse | MLSpamRuleResponseActionsItem1 FlagToChannelActionResponse | MLSpamRuleResponseActionsItem2 QuarantineUserActionResponse | MLSpamRuleResponseActionsItem3 UserCommunicationDisabledActionResponse
    deriving (Show, Eq, Generic)

instance FromJSON MLSpamRuleResponseActionsItem where
    parseJSON v =
        MLSpamRuleResponseActionsItem0 <$> parseJSON v
            <|> MLSpamRuleResponseActionsItem1 <$> parseJSON v
            <|> MLSpamRuleResponseActionsItem2 <$> parseJSON v
            <|> MLSpamRuleResponseActionsItem3 <$> parseJSON v