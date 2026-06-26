{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.KeywordUpsertRequestPartial where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.AutomodEventType
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.KeywordTriggerMetadata
import Muffle.Discord.Generated.Schemas.AutomodTriggerType
import Muffle.Discord.Generated.Schemas.BlockMessageAction
import Muffle.Discord.Generated.Schemas.FlagToChannelAction
import Muffle.Discord.Generated.Schemas.QuarantineUserAction
import Muffle.Discord.Generated.Schemas.UserCommunicationDisabledAction

data KeywordUpsertRequestPartial = KeywordUpsertRequestPartial
    { actions :: Maybe KeywordUpsertRequestPartialActionsNullableInner
    , enabled :: Maybe (Maybe Bool)
    , eventType :: Maybe AutomodEventType
    , exemptChannels :: Maybe [SnowflakeType]
    , exemptRoles :: Maybe [SnowflakeType]
    , name :: Maybe String
    , triggerMetadata :: Maybe (Maybe KeywordTriggerMetadata)
    , triggerType :: Maybe AutomodTriggerType
    }
    deriving (Show, Eq, Generic)
newtype KeywordUpsertRequestPartialActionsNullableInner = KeywordUpsertRequestPartialActionsNullableInner [KeywordUpsertRequestPartialActionsNullableInnerItem]
    deriving (Show, Eq, Generic)
data KeywordUpsertRequestPartialActionsNullableInnerItem = KeywordUpsertRequestPartialActionsNullableInnerItem0 BlockMessageAction | KeywordUpsertRequestPartialActionsNullableInnerItem1 FlagToChannelAction | KeywordUpsertRequestPartialActionsNullableInnerItem2 QuarantineUserAction | KeywordUpsertRequestPartialActionsNullableInnerItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)
