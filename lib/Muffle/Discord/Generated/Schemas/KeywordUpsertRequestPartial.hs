{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.KeywordUpsertRequestPartial where

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

data KeywordUpsertRequestPartial = KeywordUpsertRequestPartial
    { actions :: Maybe KeywordUpsertRequestPartialActionsNullableInner
    , enabled :: Maybe (Maybe Bool)
    , eventType :: Maybe AutomodEventType
    , exemptChannels :: Maybe [SnowflakeType]
    , exemptRoles :: Maybe [SnowflakeType]
    , name :: Maybe String
    , triggerMetadata :: Maybe (Maybe KeywordTriggerMetadata)
    , triggerType :: Maybe AutomodTriggerType
    }
    deriving (Show, Eq, Generic)

instance FromJSON KeywordUpsertRequestPartial where
    parseJSON = withObject "KeywordUpsertRequestPartial" $ \o ->
        KeywordUpsertRequestPartial <$>
            o .: "actions"
            <*> o .: "enabled"
            <*> o .: "event_type"
            <*> o .: "exempt_channels"
            <*> o .: "exempt_roles"
            <*> o .: "name"
            <*> o .: "trigger_metadata"
            <*> o .: "trigger_type"

newtype KeywordUpsertRequestPartialActionsNullableInner = KeywordUpsertRequestPartialActionsNullableInner [KeywordUpsertRequestPartialActionsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON KeywordUpsertRequestPartialActionsNullableInner where
    parseJSON v = KeywordUpsertRequestPartialActionsNullableInner <$> parseJSON v

data KeywordUpsertRequestPartialActionsNullableInnerItem = KeywordUpsertRequestPartialActionsNullableInnerItem0 BlockMessageAction | KeywordUpsertRequestPartialActionsNullableInnerItem1 FlagToChannelAction | KeywordUpsertRequestPartialActionsNullableInnerItem2 QuarantineUserAction | KeywordUpsertRequestPartialActionsNullableInnerItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)

instance FromJSON KeywordUpsertRequestPartialActionsNullableInnerItem where
    parseJSON v =
        KeywordUpsertRequestPartialActionsNullableInnerItem0 <$> parseJSON v
            <|> KeywordUpsertRequestPartialActionsNullableInnerItem1 <$> parseJSON v
            <|> KeywordUpsertRequestPartialActionsNullableInnerItem2 <$> parseJSON v
            <|> KeywordUpsertRequestPartialActionsNullableInnerItem3 <$> parseJSON v