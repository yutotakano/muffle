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
    { actions :: [DefaultKeywordListUpsertRequestActionsItem]
    , enabled :: Maybe Bool
    , eventType :: AutomodEventType
    , exemptChannels :: [SnowflakeType]
    , exemptRoles :: [SnowflakeType]
    , name :: String
    , triggerMetadata :: DefaultKeywordListTriggerMetadata
    , triggerType :: AutomodTriggerType
    }
    deriving (Show, Eq, Generic)
data DefaultKeywordListUpsertRequestActionsItem = DefaultKeywordListUpsertRequestActionsItem0 BlockMessageAction | DefaultKeywordListUpsertRequestActionsItem1 FlagToChannelAction | DefaultKeywordListUpsertRequestActionsItem2 QuarantineUserAction | DefaultKeywordListUpsertRequestActionsItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)
