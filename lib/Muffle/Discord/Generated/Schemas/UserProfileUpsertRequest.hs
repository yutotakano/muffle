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
    { actions :: [UserProfileUpsertRequestActionsItem]
    , enabled :: Maybe Bool
    , eventType :: AutomodEventType
    , exemptChannels :: [SnowflakeType]
    , exemptRoles :: [SnowflakeType]
    , name :: String
    , triggerMetadata :: UserProfileMetadata
    , triggerType :: AutomodTriggerType
    }
    deriving (Show, Eq, Generic)
data UserProfileUpsertRequestActionsItem = UserProfileUpsertRequestActionsItem0 BlockMessageAction | UserProfileUpsertRequestActionsItem1 FlagToChannelAction | UserProfileUpsertRequestActionsItem2 QuarantineUserAction | UserProfileUpsertRequestActionsItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)
