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
    { actions :: [MLSpamUpsertRequestPartialActionsItem]
    , enabled :: Maybe Bool
    , eventType :: AutomodEventType
    , exemptChannels :: [SnowflakeType]
    , exemptRoles :: [SnowflakeType]
    , name :: String
    , triggerMetadata :: Maybe MLSpamTriggerMetadata
    , triggerType :: AutomodTriggerType
    }
    deriving (Show, Eq, Generic)
data MLSpamUpsertRequestPartialActionsItem = MLSpamUpsertRequestPartialActionsItem0 BlockMessageAction | MLSpamUpsertRequestPartialActionsItem1 FlagToChannelAction | MLSpamUpsertRequestPartialActionsItem2 QuarantineUserAction | MLSpamUpsertRequestPartialActionsItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)
