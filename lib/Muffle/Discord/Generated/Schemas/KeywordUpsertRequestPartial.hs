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
    { actions :: [KeywordUpsertRequestPartialActionsItem]
    , enabled :: Maybe Bool
    , eventType :: AutomodEventType
    , exemptChannels :: [SnowflakeType]
    , exemptRoles :: [SnowflakeType]
    , name :: String
    , triggerMetadata :: Maybe KeywordTriggerMetadata
    , triggerType :: AutomodTriggerType
    }
    deriving (Show, Eq, Generic)
data KeywordUpsertRequestPartialActionsItem = KeywordUpsertRequestPartialActionsItem0 BlockMessageAction | KeywordUpsertRequestPartialActionsItem1 FlagToChannelAction | KeywordUpsertRequestPartialActionsItem2 QuarantineUserAction | KeywordUpsertRequestPartialActionsItem3 UserCommunicationDisabledAction
    deriving (Show, Eq, Generic)
