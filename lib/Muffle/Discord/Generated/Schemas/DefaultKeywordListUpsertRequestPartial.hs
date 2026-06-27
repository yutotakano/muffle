{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.DefaultKeywordListUpsertRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.AutomodEventType
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.DefaultKeywordListTriggerMetadata
import Muffle.Discord.Generated.Schemas.AutomodTriggerType
import Muffle.Discord.Generated.Schemas.BlockMessageAction
import Muffle.Discord.Generated.Schemas.FlagToChannelAction
import Muffle.Discord.Generated.Schemas.QuarantineUserAction
import Muffle.Discord.Generated.Schemas.UserCommunicationDisabledAction

data DefaultKeywordListUpsertRequestPartial = DefaultKeywordListUpsertRequestPartial
    { actions :: Maybe DefaultKeywordListUpsertRequestPartialActionsNullableInner
    , enabled :: Maybe (Maybe Bool)
    , eventType :: Maybe AutomodEventType
    , exemptChannels :: Maybe [SnowflakeType]
    , exemptRoles :: Maybe [SnowflakeType]
    , name :: Maybe String
    , triggerMetadata :: Maybe DefaultKeywordListTriggerMetadata
    , triggerType :: Maybe AutomodTriggerType
    }
    deriving (Show, Eq, Generic)

instance FromJSON DefaultKeywordListUpsertRequestPartial where
    parseJSON = withObject "DefaultKeywordListUpsertRequestPartial" $ \o ->
        DefaultKeywordListUpsertRequestPartial <$>
            o .: "actions"
            <*> o .: "enabled"
            <*> o .: "event_type"
            <*> o .: "exempt_channels"
            <*> o .: "exempt_roles"
            <*> o .: "name"
            <*> o .: "trigger_metadata"
            <*> o .: "trigger_type"

newtype DefaultKeywordListUpsertRequestPartialActionsNullableInner = DefaultKeywordListUpsertRequestPartialActionsNullableInner [DefaultKeywordListUpsertRequestPartialActionsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON DefaultKeywordListUpsertRequestPartialActionsNullableInner where
    parseJSON v = DefaultKeywordListUpsertRequestPartialActionsNullableInner <$> parseJSON v

data DefaultKeywordListUpsertRequestPartialActionsNullableInnerItem = DefaultKeywordListUpsertRequestPartialActionsNullableInnerItem0 BlockMessageAction | DefaultKeywordListUpsertRequestPartialActionsNullableInnerItem1 FlagToChannelAction | DefaultKeywordListUpsertRequestPartialActionsNullableInnerItem2 QuarantineUserAction | DefaultKeywordListUpsertRequestPartialActionsNullableInnerItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)

instance FromJSON DefaultKeywordListUpsertRequestPartialActionsNullableInnerItem where
    parseJSON v =
        DefaultKeywordListUpsertRequestPartialActionsNullableInnerItem0 <$> parseJSON v
            <|> DefaultKeywordListUpsertRequestPartialActionsNullableInnerItem1 <$> parseJSON v
            <|> DefaultKeywordListUpsertRequestPartialActionsNullableInnerItem2 <$> parseJSON v
            <|> DefaultKeywordListUpsertRequestPartialActionsNullableInnerItem3 <$> parseJSON v