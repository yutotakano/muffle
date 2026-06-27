{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UserProfileUpsertRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.AutomodEventType
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UserProfileMetadata
import Muffle.Discord.Generated.Schemas.AutomodTriggerType
import Muffle.Discord.Generated.Schemas.BlockMessageAction
import Muffle.Discord.Generated.Schemas.FlagToChannelAction
import Muffle.Discord.Generated.Schemas.QuarantineUserAction
import Muffle.Discord.Generated.Schemas.UserCommunicationDisabledAction

data UserProfileUpsertRequest = UserProfileUpsertRequest
    { actions :: Maybe UserProfileUpsertRequestActionsNullableInner
    , enabled :: Maybe (Maybe Bool)
    , eventType :: AutomodEventType
    , exemptChannels :: Maybe [SnowflakeType]
    , exemptRoles :: Maybe [SnowflakeType]
    , name :: String
    , triggerMetadata :: UserProfileMetadata
    , triggerType :: AutomodTriggerType
    }
    deriving (Show, Eq, Generic)

instance FromJSON UserProfileUpsertRequest where
    parseJSON = withObject "UserProfileUpsertRequest" $ \o ->
        UserProfileUpsertRequest <$>
            o .: "actions"
            <*> o .: "enabled"
            <*> o .: "event_type"
            <*> o .: "exempt_channels"
            <*> o .: "exempt_roles"
            <*> o .: "name"
            <*> o .: "trigger_metadata"
            <*> o .: "trigger_type"

newtype UserProfileUpsertRequestActionsNullableInner = UserProfileUpsertRequestActionsNullableInner [UserProfileUpsertRequestActionsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON UserProfileUpsertRequestActionsNullableInner where
    parseJSON v = UserProfileUpsertRequestActionsNullableInner <$> parseJSON v

data UserProfileUpsertRequestActionsNullableInnerItem = UserProfileUpsertRequestActionsNullableInnerItem0 BlockMessageAction | UserProfileUpsertRequestActionsNullableInnerItem1 FlagToChannelAction | UserProfileUpsertRequestActionsNullableInnerItem2 QuarantineUserAction | UserProfileUpsertRequestActionsNullableInnerItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)

instance FromJSON UserProfileUpsertRequestActionsNullableInnerItem where
    parseJSON v =
        UserProfileUpsertRequestActionsNullableInnerItem0 <$> parseJSON v
            <|> UserProfileUpsertRequestActionsNullableInnerItem1 <$> parseJSON v
            <|> UserProfileUpsertRequestActionsNullableInnerItem2 <$> parseJSON v
            <|> UserProfileUpsertRequestActionsNullableInnerItem3 <$> parseJSON v