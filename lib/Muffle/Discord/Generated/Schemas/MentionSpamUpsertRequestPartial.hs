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
    { actions :: Maybe MentionSpamUpsertRequestPartialActionsNullableInner
    , enabled :: Maybe (Maybe Bool)
    , eventType :: Maybe AutomodEventType
    , exemptChannels :: Maybe [SnowflakeType]
    , exemptRoles :: Maybe [SnowflakeType]
    , name :: Maybe String
    , triggerMetadata :: Maybe (Maybe MentionSpamTriggerMetadata)
    , triggerType :: Maybe AutomodTriggerType
    }
    deriving (Show, Eq, Generic)
newtype MentionSpamUpsertRequestPartialActionsNullableInner = MentionSpamUpsertRequestPartialActionsNullableInner [MentionSpamUpsertRequestPartialActionsNullableInnerItem]
    deriving (Show, Eq, Generic)
data MentionSpamUpsertRequestPartialActionsNullableInnerItem = MentionSpamUpsertRequestPartialActionsNullableInnerItem0 BlockMessageAction | MentionSpamUpsertRequestPartialActionsNullableInnerItem1 FlagToChannelAction | MentionSpamUpsertRequestPartialActionsNullableInnerItem2 QuarantineUserAction | MentionSpamUpsertRequestPartialActionsNullableInnerItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)
