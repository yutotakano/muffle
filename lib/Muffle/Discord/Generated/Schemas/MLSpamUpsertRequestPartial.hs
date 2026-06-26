{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MLSpamUpsertRequestPartial where

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
newtype MLSpamUpsertRequestPartialActionsNullableInner = MLSpamUpsertRequestPartialActionsNullableInner [MLSpamUpsertRequestPartialActionsNullableInnerItem]
    deriving (Show, Eq, Generic)
data MLSpamUpsertRequestPartialActionsNullableInnerItem = MLSpamUpsertRequestPartialActionsNullableInnerItem0 BlockMessageAction | MLSpamUpsertRequestPartialActionsNullableInnerItem1 FlagToChannelAction | MLSpamUpsertRequestPartialActionsNullableInnerItem2 QuarantineUserAction | MLSpamUpsertRequestPartialActionsNullableInnerItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)
