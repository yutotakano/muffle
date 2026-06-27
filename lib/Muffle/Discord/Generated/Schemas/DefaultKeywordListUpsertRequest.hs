{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.DefaultKeywordListUpsertRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.AutomodEventType
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.DefaultKeywordListTriggerMetadata
import Muffle.Discord.Generated.Schemas.AutomodTriggerType
import Muffle.Discord.Generated.Schemas.BlockMessageAction
import Muffle.Discord.Generated.Schemas.FlagToChannelAction
import Muffle.Discord.Generated.Schemas.QuarantineUserAction
import Muffle.Discord.Generated.Schemas.UserCommunicationDisabledAction

data DefaultKeywordListUpsertRequest = DefaultKeywordListUpsertRequest
    { actions :: Maybe DefaultKeywordListUpsertRequestActionsNullableInner
    , enabled :: Maybe (Maybe Bool)
    , eventType :: AutomodEventType
    , exemptChannels :: Maybe [SnowflakeType]
    , exemptRoles :: Maybe [SnowflakeType]
    , name :: String
    , triggerMetadata :: DefaultKeywordListTriggerMetadata
    , triggerType :: AutomodTriggerType
    }
    deriving (Show, Eq, Generic)

instance FromJSON DefaultKeywordListUpsertRequest where
    parseJSON = withObject "DefaultKeywordListUpsertRequest" $ \o ->
        DefaultKeywordListUpsertRequest <$>
            o .: "actions"
            <*> o .: "enabled"
            <*> o .: "event_type"
            <*> o .: "exempt_channels"
            <*> o .: "exempt_roles"
            <*> o .: "name"
            <*> o .: "trigger_metadata"
            <*> o .: "trigger_type"

newtype DefaultKeywordListUpsertRequestActionsNullableInner = DefaultKeywordListUpsertRequestActionsNullableInner [DefaultKeywordListUpsertRequestActionsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON DefaultKeywordListUpsertRequestActionsNullableInner where
    parseJSON v = DefaultKeywordListUpsertRequestActionsNullableInner <$> parseJSON v

data DefaultKeywordListUpsertRequestActionsNullableInnerItem = DefaultKeywordListUpsertRequestActionsNullableInnerItem0 BlockMessageAction | DefaultKeywordListUpsertRequestActionsNullableInnerItem1 FlagToChannelAction | DefaultKeywordListUpsertRequestActionsNullableInnerItem2 QuarantineUserAction | DefaultKeywordListUpsertRequestActionsNullableInnerItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)

instance FromJSON DefaultKeywordListUpsertRequestActionsNullableInnerItem where
    parseJSON v =
        DefaultKeywordListUpsertRequestActionsNullableInnerItem0 <$> parseJSON v
            <|> DefaultKeywordListUpsertRequestActionsNullableInnerItem1 <$> parseJSON v
            <|> DefaultKeywordListUpsertRequestActionsNullableInnerItem2 <$> parseJSON v
            <|> DefaultKeywordListUpsertRequestActionsNullableInnerItem3 <$> parseJSON v