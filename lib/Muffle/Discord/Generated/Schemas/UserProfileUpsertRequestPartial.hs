{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UserProfileUpsertRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.AutomodEventType
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UserProfileMetadata
import Muffle.Discord.Generated.Schemas.AutomodTriggerType
import Muffle.Discord.Generated.Schemas.BlockMessageAction
import Muffle.Discord.Generated.Schemas.FlagToChannelAction
import Muffle.Discord.Generated.Schemas.QuarantineUserAction
import Muffle.Discord.Generated.Schemas.UserCommunicationDisabledAction

data UserProfileUpsertRequestPartial = UserProfileUpsertRequestPartial
    { actions :: Maybe UserProfileUpsertRequestPartialActionsNullableInner
    , enabled :: Maybe (Maybe Bool)
    , eventType :: Maybe AutomodEventType
    , exemptChannels :: Maybe [SnowflakeType]
    , exemptRoles :: Maybe [SnowflakeType]
    , name :: Maybe String
    , triggerMetadata :: Maybe UserProfileMetadata
    , triggerType :: Maybe AutomodTriggerType
    }
    deriving (Show, Eq, Generic)

instance FromJSON UserProfileUpsertRequestPartial where
    parseJSON = withObject "UserProfileUpsertRequestPartial" $ \o ->
        UserProfileUpsertRequestPartial <$>
            o .: "actions"
            <*> o .: "enabled"
            <*> o .: "event_type"
            <*> o .: "exempt_channels"
            <*> o .: "exempt_roles"
            <*> o .: "name"
            <*> o .: "trigger_metadata"
            <*> o .: "trigger_type"

newtype UserProfileUpsertRequestPartialActionsNullableInner = UserProfileUpsertRequestPartialActionsNullableInner [UserProfileUpsertRequestPartialActionsNullableInnerItem]
    deriving (Show, Eq, Generic)

instance FromJSON UserProfileUpsertRequestPartialActionsNullableInner where
    parseJSON v = UserProfileUpsertRequestPartialActionsNullableInner <$> parseJSON v

data UserProfileUpsertRequestPartialActionsNullableInnerItem = UserProfileUpsertRequestPartialActionsNullableInnerItem0 BlockMessageAction | UserProfileUpsertRequestPartialActionsNullableInnerItem1 FlagToChannelAction | UserProfileUpsertRequestPartialActionsNullableInnerItem2 QuarantineUserAction | UserProfileUpsertRequestPartialActionsNullableInnerItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)

instance FromJSON UserProfileUpsertRequestPartialActionsNullableInnerItem where
    parseJSON v =
        UserProfileUpsertRequestPartialActionsNullableInnerItem0 <$> parseJSON v
            <|> UserProfileUpsertRequestPartialActionsNullableInnerItem1 <$> parseJSON v
            <|> UserProfileUpsertRequestPartialActionsNullableInnerItem2 <$> parseJSON v
            <|> UserProfileUpsertRequestPartialActionsNullableInnerItem3 <$> parseJSON v