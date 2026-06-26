{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.DefaultKeywordListUpsertRequestPartial where

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
newtype DefaultKeywordListUpsertRequestPartialActionsNullableInner = DefaultKeywordListUpsertRequestPartialActionsNullableInner [DefaultKeywordListUpsertRequestPartialActionsNullableInnerItem]
    deriving (Show, Eq, Generic)
data DefaultKeywordListUpsertRequestPartialActionsNullableInnerItem = DefaultKeywordListUpsertRequestPartialActionsNullableInnerItem0 BlockMessageAction | DefaultKeywordListUpsertRequestPartialActionsNullableInnerItem1 FlagToChannelAction | DefaultKeywordListUpsertRequestPartialActionsNullableInnerItem2 QuarantineUserAction | DefaultKeywordListUpsertRequestPartialActionsNullableInnerItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)
