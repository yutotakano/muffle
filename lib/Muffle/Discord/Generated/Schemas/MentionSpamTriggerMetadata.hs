{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MentionSpamTriggerMetadata where

import Data.Int (Int32, Int64)
import GHC.Generics


data MentionSpamTriggerMetadata = MentionSpamTriggerMetadata
    { mentionRaidProtectionEnabled :: Maybe Bool
    , mentionTotalLimit :: Maybe Integer
    }
    deriving (Show, Eq, Generic)
