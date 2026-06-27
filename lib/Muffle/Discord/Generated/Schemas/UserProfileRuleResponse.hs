{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UserProfileRuleResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.AutomodEventType
import Muffle.Discord.Generated.Schemas.UserProfileMetadataResponse
import Muffle.Discord.Generated.Schemas.AutomodTriggerType
import Muffle.Discord.Generated.Schemas.BlockMessageActionResponse
import Muffle.Discord.Generated.Schemas.FlagToChannelActionResponse
import Muffle.Discord.Generated.Schemas.QuarantineUserActionResponse
import Muffle.Discord.Generated.Schemas.UserCommunicationDisabledActionResponse

data UserProfileRuleResponse = UserProfileRuleResponse
    { actions :: [UserProfileRuleResponseActionsItem]
    , creatorId :: SnowflakeType
    , enabled :: Bool
    , eventType :: AutomodEventType
    , exemptChannels :: [SnowflakeType]
    , exemptRoles :: [SnowflakeType]
    , guildId :: SnowflakeType
    , id :: SnowflakeType
    , name :: String
    , triggerMetadata :: UserProfileMetadataResponse
    , triggerType :: AutomodTriggerType
    }
    deriving (Show, Eq, Generic)

instance FromJSON UserProfileRuleResponse where
    parseJSON = withObject "UserProfileRuleResponse" $ \o ->
        UserProfileRuleResponse <$>
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

data UserProfileRuleResponseActionsItem = UserProfileRuleResponseActionsItem0 BlockMessageActionResponse | UserProfileRuleResponseActionsItem1 FlagToChannelActionResponse | UserProfileRuleResponseActionsItem2 QuarantineUserActionResponse | UserProfileRuleResponseActionsItem3 UserCommunicationDisabledActionResponse
    deriving (Show, Eq, Generic)

instance FromJSON UserProfileRuleResponseActionsItem where
    parseJSON v =
        UserProfileRuleResponseActionsItem0 <$> parseJSON v
            <|> UserProfileRuleResponseActionsItem1 <$> parseJSON v
            <|> UserProfileRuleResponseActionsItem2 <$> parseJSON v
            <|> UserProfileRuleResponseActionsItem3 <$> parseJSON v