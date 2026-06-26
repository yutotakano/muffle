{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MentionSpamTriggerMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data MentionSpamTriggerMetadataResponse = MentionSpamTriggerMetadataResponse
    { mentionRaidProtectionEnabled :: Bool
    , mentionTotalLimit :: Int32
    }
    deriving (Show, Eq, Generic)
