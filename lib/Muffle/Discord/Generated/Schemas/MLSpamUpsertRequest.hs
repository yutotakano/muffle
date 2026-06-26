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
    { actions :: [MLSpamUpsertRequestActionsItem]
    , enabled :: Maybe Bool
    , eventType :: AutomodEventType
    , exemptChannels :: [SnowflakeType]
    , exemptRoles :: [SnowflakeType]
    , name :: String
    , triggerMetadata :: Maybe MLSpamTriggerMetadata
    , triggerType :: AutomodTriggerType
    }
    deriving (Show, Eq, Generic)
data MLSpamUpsertRequestActionsItem = MLSpamUpsertRequestActionsItem0 BlockMessageAction | MLSpamUpsertRequestActionsItem1 FlagToChannelAction | MLSpamUpsertRequestActionsItem2 QuarantineUserAction | MLSpamUpsertRequestActionsItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)
