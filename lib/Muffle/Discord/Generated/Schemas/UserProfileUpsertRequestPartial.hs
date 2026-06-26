{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UserProfileUpsertRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
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
newtype UserProfileUpsertRequestPartialActionsNullableInner = UserProfileUpsertRequestPartialActionsNullableInner [UserProfileUpsertRequestPartialActionsNullableInnerItem]
    deriving (Show, Eq, Generic)
data UserProfileUpsertRequestPartialActionsNullableInnerItem = UserProfileUpsertRequestPartialActionsNullableInnerItem0 BlockMessageAction | UserProfileUpsertRequestPartialActionsNullableInnerItem1 FlagToChannelAction | UserProfileUpsertRequestPartialActionsNullableInnerItem2 QuarantineUserAction | UserProfileUpsertRequestPartialActionsNullableInnerItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)
