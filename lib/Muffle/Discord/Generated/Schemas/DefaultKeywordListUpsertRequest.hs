{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.DefaultKeywordListUpsertRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
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
newtype DefaultKeywordListUpsertRequestActionsNullableInner = DefaultKeywordListUpsertRequestActionsNullableInner [DefaultKeywordListUpsertRequestActionsNullableInnerItem]
    deriving (Show, Eq, Generic)
data DefaultKeywordListUpsertRequestActionsNullableInnerItem = DefaultKeywordListUpsertRequestActionsNullableInnerItem0 BlockMessageAction | DefaultKeywordListUpsertRequestActionsNullableInnerItem1 FlagToChannelAction | DefaultKeywordListUpsertRequestActionsNullableInnerItem2 QuarantineUserAction | DefaultKeywordListUpsertRequestActionsNullableInnerItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)
