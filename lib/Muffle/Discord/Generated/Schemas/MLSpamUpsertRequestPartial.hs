{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MLSpamUpsertRequestPartial where

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

data MLSpamUpsertRequestPartial = MLSpamUpsertRequestPartial
    { actions :: Maybe MLSpamUpsertRequestPartialActionsNullableInner
    , enabled :: Maybe (Maybe Bool)
    , eventType :: Maybe AutomodEventType
    , exemptChannels :: Maybe [SnowflakeType]
    , exemptRoles :: Maybe [SnowflakeType]
    , name :: Maybe String
    , triggerMetadata :: Maybe (Maybe MLSpamTriggerMetadata)
    , triggerType :: Maybe AutomodTriggerType
    }
    deriving (Show, Eq, Generic)

instance FromJSON MLSpamUpsertRequestPartial where
    parseJSON = withObject "MLSpamUpsertRequestPartial" $ \o ->
        MLSpamUpsertRequestPartial <$>
            o .: "actions"
            <*> o .: "enabled"
            <*> o .: "event_type"
            <*> o .: "exempt_channels"
            <*> o .: "exempt_roles"
            <*> o .: "name"
            <*> o .: "trigger_metadata"
            <*> o .: "trigger_type"

newtype MLSpamUpsertRequestPartialActionsNullableInner = MLSpamUpsertRequestPartialActionsNullableInner [MLSpamUpsertRequestPartialActionsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON MLSpamUpsertRequestPartialActionsNullableInner where
    parseJSON v = MLSpamUpsertRequestPartialActionsNullableInner <$> parseJSON v

data MLSpamUpsertRequestPartialActionsNullableInnerItem = MLSpamUpsertRequestPartialActionsNullableInnerItem0 BlockMessageAction | MLSpamUpsertRequestPartialActionsNullableInnerItem1 FlagToChannelAction | MLSpamUpsertRequestPartialActionsNullableInnerItem2 QuarantineUserAction | MLSpamUpsertRequestPartialActionsNullableInnerItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)

instance FromJSON MLSpamUpsertRequestPartialActionsNullableInnerItem where
    parseJSON v =
        MLSpamUpsertRequestPartialActionsNullableInnerItem0 <$> parseJSON v
            <|> MLSpamUpsertRequestPartialActionsNullableInnerItem1 <$> parseJSON v
            <|> MLSpamUpsertRequestPartialActionsNullableInnerItem2 <$> parseJSON v
            <|> MLSpamUpsertRequestPartialActionsNullableInnerItem3 <$> parseJSON v