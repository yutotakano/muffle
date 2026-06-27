{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MLSpamUpsertRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.AutomodEventType
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.MLSpamTriggerMetadata
import Muffle.Discord.Generated.Schemas.AutomodTriggerType
import Muffle.Discord.Generated.Schemas.BlockMessageAction
import Muffle.Discord.Generated.Schemas.FlagToChannelAction
import Muffle.Discord.Generated.Schemas.QuarantineUserAction
import Muffle.Discord.Generated.Schemas.UserCommunicationDisabledAction

data MLSpamUpsertRequest = MLSpamUpsertRequest
    { actions :: Maybe MLSpamUpsertRequestActionsNullableInner
    , enabled :: Maybe (Maybe Bool)
    , eventType :: AutomodEventType
    , exemptChannels :: Maybe [SnowflakeType]
    , exemptRoles :: Maybe [SnowflakeType]
    , name :: String
    , triggerMetadata :: Maybe (Maybe MLSpamTriggerMetadata)
    , triggerType :: AutomodTriggerType
    }
    deriving (Show, Eq, Generic)

instance FromJSON MLSpamUpsertRequest where
    parseJSON = withObject "MLSpamUpsertRequest" $ \o ->
        MLSpamUpsertRequest <$>
            o .: "actions"
            <*> o .: "enabled"
            <*> o .: "event_type"
            <*> o .: "exempt_channels"
            <*> o .: "exempt_roles"
            <*> o .: "name"
            <*> o .: "trigger_metadata"
            <*> o .: "trigger_type"

newtype MLSpamUpsertRequestActionsNullableInner = MLSpamUpsertRequestActionsNullableInner [MLSpamUpsertRequestActionsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON MLSpamUpsertRequestActionsNullableInner where
    parseJSON v = MLSpamUpsertRequestActionsNullableInner <$> parseJSON v

data MLSpamUpsertRequestActionsNullableInnerItem = MLSpamUpsertRequestActionsNullableInnerItem0 BlockMessageAction | MLSpamUpsertRequestActionsNullableInnerItem1 FlagToChannelAction | MLSpamUpsertRequestActionsNullableInnerItem2 QuarantineUserAction | MLSpamUpsertRequestActionsNullableInnerItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)

instance FromJSON MLSpamUpsertRequestActionsNullableInnerItem where
    parseJSON v =
        MLSpamUpsertRequestActionsNullableInnerItem0 <$> parseJSON v
            <|> MLSpamUpsertRequestActionsNullableInnerItem1 <$> parseJSON v
            <|> MLSpamUpsertRequestActionsNullableInnerItem2 <$> parseJSON v
            <|> MLSpamUpsertRequestActionsNullableInnerItem3 <$> parseJSON v