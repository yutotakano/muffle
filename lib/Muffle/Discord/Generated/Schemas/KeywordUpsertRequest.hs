{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.KeywordUpsertRequest where

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

data KeywordUpsertRequest = KeywordUpsertRequest
    { actions :: Maybe KeywordUpsertRequestActionsNullableInner
    , enabled :: Maybe (Maybe Bool)
    , eventType :: AutomodEventType
    , exemptChannels :: Maybe [SnowflakeType]
    , exemptRoles :: Maybe [SnowflakeType]
    , name :: String
    , triggerMetadata :: Maybe (Maybe KeywordTriggerMetadata)
    , triggerType :: AutomodTriggerType
    }
    deriving (Show, Eq, Generic)
newtype KeywordUpsertRequestActionsNullableInner = KeywordUpsertRequestActionsNullableInner [KeywordUpsertRequestActionsNullableInnerItem]
    deriving (Show, Eq, Generic)
data KeywordUpsertRequestActionsNullableInnerItem = KeywordUpsertRequestActionsNullableInnerItem0 BlockMessageAction | KeywordUpsertRequestActionsNullableInnerItem1 FlagToChannelAction | KeywordUpsertRequestActionsNullableInnerItem2 QuarantineUserAction | KeywordUpsertRequestActionsNullableInnerItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)
