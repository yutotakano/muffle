{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UserProfileUpsertRequest where

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
newtype UserProfileUpsertRequestActionsNullableInner = UserProfileUpsertRequestActionsNullableInner [UserProfileUpsertRequestActionsNullableInnerItem]
    deriving (Show, Eq, Generic)
data UserProfileUpsertRequestActionsNullableInnerItem = UserProfileUpsertRequestActionsNullableInnerItem0 BlockMessageAction | UserProfileUpsertRequestActionsNullableInnerItem1 FlagToChannelAction | UserProfileUpsertRequestActionsNullableInnerItem2 QuarantineUserAction | UserProfileUpsertRequestActionsNullableInnerItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)
