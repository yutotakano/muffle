{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MentionSpamUpsertRequest where

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

data MentionSpamUpsertRequest = MentionSpamUpsertRequest
    { actions :: Maybe MentionSpamUpsertRequestActionsNullableInner
    , enabled :: Maybe (Maybe Bool)
    , eventType :: AutomodEventType
    , exemptChannels :: Maybe [SnowflakeType]
    , exemptRoles :: Maybe [SnowflakeType]
    , name :: String
    , triggerMetadata :: Maybe (Maybe MentionSpamTriggerMetadata)
    , triggerType :: AutomodTriggerType
    }
    deriving (Show, Eq, Generic)
newtype MentionSpamUpsertRequestActionsNullableInner = MentionSpamUpsertRequestActionsNullableInner [MentionSpamUpsertRequestActionsNullableInnerItem]
    deriving (Show, Eq, Generic)
data MentionSpamUpsertRequestActionsNullableInnerItem = MentionSpamUpsertRequestActionsNullableInnerItem0 BlockMessageAction | MentionSpamUpsertRequestActionsNullableInnerItem1 FlagToChannelAction | MentionSpamUpsertRequestActionsNullableInnerItem2 QuarantineUserAction | MentionSpamUpsertRequestActionsNullableInnerItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)
