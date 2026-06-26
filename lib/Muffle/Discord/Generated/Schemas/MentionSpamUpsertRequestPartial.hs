{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MentionSpamUpsertRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.AutomodEventType
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.MentionSpamTriggerMetadata
import Muffle.Discord.Generated.Schemas.AutomodTriggerType
import Muffle.Discord.Generated.Schemas.BlockMessageAction
import Muffle.Discord.Generated.Schemas.FlagToChannelAction
import Muffle.Discord.Generated.Schemas.QuarantineUserAction
import Muffle.Discord.Generated.Schemas.UserCommunicationDisabledAction

data MentionSpamUpsertRequestPartial = MentionSpamUpsertRequestPartial
    { actions :: [MentionSpamUpsertRequestPartialActionsItem]
    , enabled :: Maybe Bool
    , eventType :: AutomodEventType
    , exemptChannels :: [SnowflakeType]
    , exemptRoles :: [SnowflakeType]
    , name :: String
    , triggerMetadata :: Maybe MentionSpamTriggerMetadata
    , triggerType :: AutomodTriggerType
    }
    deriving (Show, Eq, Generic)
data MentionSpamUpsertRequestPartialActionsItem = MentionSpamUpsertRequestPartialActionsItem0 BlockMessageAction | MentionSpamUpsertRequestPartialActionsItem1 FlagToChannelAction | MentionSpamUpsertRequestPartialActionsItem2 QuarantineUserAction | MentionSpamUpsertRequestPartialActionsItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)
