{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.KeywordUpsertRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.AutomodEventType
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.KeywordTriggerMetadata
import Muffle.Discord.Generated.Schemas.AutomodTriggerType
import Muffle.Discord.Generated.Schemas.BlockMessageAction
import Muffle.Discord.Generated.Schemas.FlagToChannelAction
import Muffle.Discord.Generated.Schemas.QuarantineUserAction
import Muffle.Discord.Generated.Schemas.UserCommunicationDisabledAction

data KeywordUpsertRequest = KeywordUpsertRequest
    { actions :: Maybe KeywordUpsertRequestActionsNullableInner
    , enabled :: Maybe (Maybe Bool)
    , eventType :: AutomodEventType
    , exemptChannels :: Maybe [SnowflakeType]
    , exemptRoles :: Maybe [SnowflakeType]
    , name :: String
    , triggerMetadata :: Maybe (Maybe KeywordTriggerMetadata)
    , triggerType :: AutomodTriggerType
    }
    deriving (Show, Eq, Generic)

instance FromJSON KeywordUpsertRequest where
    parseJSON = withObject "KeywordUpsertRequest" $ \o ->
        KeywordUpsertRequest <$>
            o .: "actions"
            <*> o .: "enabled"
            <*> o .: "event_type"
            <*> o .: "exempt_channels"
            <*> o .: "exempt_roles"
            <*> o .: "name"
            <*> o .: "trigger_metadata"
            <*> o .: "trigger_type"

newtype KeywordUpsertRequestActionsNullableInner = KeywordUpsertRequestActionsNullableInner [KeywordUpsertRequestActionsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON KeywordUpsertRequestActionsNullableInner where
    parseJSON v = KeywordUpsertRequestActionsNullableInner <$> parseJSON v

data KeywordUpsertRequestActionsNullableInnerItem = KeywordUpsertRequestActionsNullableInnerItem0 BlockMessageAction | KeywordUpsertRequestActionsNullableInnerItem1 FlagToChannelAction | KeywordUpsertRequestActionsNullableInnerItem2 QuarantineUserAction | KeywordUpsertRequestActionsNullableInnerItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)

instance FromJSON KeywordUpsertRequestActionsNullableInnerItem where
    parseJSON v =
        KeywordUpsertRequestActionsNullableInnerItem0 <$> parseJSON v
            <|> KeywordUpsertRequestActionsNullableInnerItem1 <$> parseJSON v
            <|> KeywordUpsertRequestActionsNullableInnerItem2 <$> parseJSON v
            <|> KeywordUpsertRequestActionsNullableInnerItem3 <$> parseJSON v