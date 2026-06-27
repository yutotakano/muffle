{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MentionSpamUpsertRequestPartial where

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

data MentionSpamUpsertRequestPartial = MentionSpamUpsertRequestPartial
    { actions :: Maybe MentionSpamUpsertRequestPartialActionsNullableInner
    , enabled :: Maybe (Maybe Bool)
    , eventType :: Maybe AutomodEventType
    , exemptChannels :: Maybe [SnowflakeType]
    , exemptRoles :: Maybe [SnowflakeType]
    , name :: Maybe String
    , triggerMetadata :: Maybe (Maybe MentionSpamTriggerMetadata)
    , triggerType :: Maybe AutomodTriggerType
    }
    deriving (Show, Eq, Generic)

instance FromJSON MentionSpamUpsertRequestPartial where
    parseJSON = withObject "MentionSpamUpsertRequestPartial" $ \o ->
        MentionSpamUpsertRequestPartial <$>
            o .: "actions"
            <*> o .: "enabled"
            <*> o .: "event_type"
            <*> o .: "exempt_channels"
            <*> o .: "exempt_roles"
            <*> o .: "name"
            <*> o .: "trigger_metadata"
            <*> o .: "trigger_type"

newtype MentionSpamUpsertRequestPartialActionsNullableInner = MentionSpamUpsertRequestPartialActionsNullableInner [MentionSpamUpsertRequestPartialActionsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON MentionSpamUpsertRequestPartialActionsNullableInner where
    parseJSON v = MentionSpamUpsertRequestPartialActionsNullableInner <$> parseJSON v

data MentionSpamUpsertRequestPartialActionsNullableInnerItem = MentionSpamUpsertRequestPartialActionsNullableInnerItem0 BlockMessageAction | MentionSpamUpsertRequestPartialActionsNullableInnerItem1 FlagToChannelAction | MentionSpamUpsertRequestPartialActionsNullableInnerItem2 QuarantineUserAction | MentionSpamUpsertRequestPartialActionsNullableInnerItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)

instance FromJSON MentionSpamUpsertRequestPartialActionsNullableInnerItem where
    parseJSON v =
        MentionSpamUpsertRequestPartialActionsNullableInnerItem0 <$> parseJSON v
            <|> MentionSpamUpsertRequestPartialActionsNullableInnerItem1 <$> parseJSON v
            <|> MentionSpamUpsertRequestPartialActionsNullableInnerItem2 <$> parseJSON v
            <|> MentionSpamUpsertRequestPartialActionsNullableInnerItem3 <$> parseJSON v