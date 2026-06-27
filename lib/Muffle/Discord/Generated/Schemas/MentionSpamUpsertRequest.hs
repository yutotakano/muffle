{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MentionSpamUpsertRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.AutomodEventType
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.MentionSpamTriggerMetadata
import Muffle.Discord.Generated.Schemas.AutomodTriggerType
import Muffle.Discord.Generated.Schemas.BlockMessageAction
import Muffle.Discord.Generated.Schemas.FlagToChannelAction
import Muffle.Discord.Generated.Schemas.QuarantineUserAction
import Muffle.Discord.Generated.Schemas.UserCommunicationDisabledAction

data MentionSpamUpsertRequest = MentionSpamUpsertRequest
    { actions :: Maybe MentionSpamUpsertRequestActionsNullableInner
    , enabled :: Maybe (Maybe Bool)
    , eventType :: AutomodEventType
    , exemptChannels :: Maybe [SnowflakeType]
    , exemptRoles :: Maybe [SnowflakeType]
    , name :: String
    , triggerMetadata :: Maybe (Maybe MentionSpamTriggerMetadata)
    , triggerType :: AutomodTriggerType
    }
    deriving (Show, Eq, Generic)

instance FromJSON MentionSpamUpsertRequest where
    parseJSON = withObject "MentionSpamUpsertRequest" $ \o ->
        MentionSpamUpsertRequest <$>
            o .: "actions"
            <*> o .: "enabled"
            <*> o .: "event_type"
            <*> o .: "exempt_channels"
            <*> o .: "exempt_roles"
            <*> o .: "name"
            <*> o .: "trigger_metadata"
            <*> o .: "trigger_type"

newtype MentionSpamUpsertRequestActionsNullableInner = MentionSpamUpsertRequestActionsNullableInner [MentionSpamUpsertRequestActionsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON MentionSpamUpsertRequestActionsNullableInner where
    parseJSON v = MentionSpamUpsertRequestActionsNullableInner <$> parseJSON v

data MentionSpamUpsertRequestActionsNullableInnerItem = MentionSpamUpsertRequestActionsNullableInnerItem0 BlockMessageAction | MentionSpamUpsertRequestActionsNullableInnerItem1 FlagToChannelAction | MentionSpamUpsertRequestActionsNullableInnerItem2 QuarantineUserAction | MentionSpamUpsertRequestActionsNullableInnerItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)

instance FromJSON MentionSpamUpsertRequestActionsNullableInnerItem where
    parseJSON v =
        MentionSpamUpsertRequestActionsNullableInnerItem0 <$> parseJSON v
            <|> MentionSpamUpsertRequestActionsNullableInnerItem1 <$> parseJSON v
            <|> MentionSpamUpsertRequestActionsNullableInnerItem2 <$> parseJSON v
            <|> MentionSpamUpsertRequestActionsNullableInnerItem3 <$> parseJSON v