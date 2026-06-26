{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MentionSpamTriggerMetadata where

import Data.Int (Int32, Int64)
import GHC.Generics


data MentionSpamTriggerMetadata = MentionSpamTriggerMetadata
    { mentionRaidProtectionEnabled :: Maybe (Maybe Bool)
    , mentionTotalLimit :: Maybe (Maybe Integer)
    }
    deriving (Show, Eq, Generic)
