{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MLSpamUpsertRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
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
newtype MLSpamUpsertRequestActionsNullableInner = MLSpamUpsertRequestActionsNullableInner [MLSpamUpsertRequestActionsNullableInnerItem]
    deriving (Show, Eq, Generic)
data MLSpamUpsertRequestActionsNullableInnerItem = MLSpamUpsertRequestActionsNullableInnerItem0 BlockMessageAction | MLSpamUpsertRequestActionsNullableInnerItem1 FlagToChannelAction | MLSpamUpsertRequestActionsNullableInnerItem2 QuarantineUserAction | MLSpamUpsertRequestActionsNullableInnerItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)
