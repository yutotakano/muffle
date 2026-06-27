{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MentionSpamTriggerMetadataResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data MentionSpamTriggerMetadataResponse = MentionSpamTriggerMetadataResponse
    { mentionRaidProtectionEnabled :: Bool
    , mentionTotalLimit :: Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON MentionSpamTriggerMetadataResponse where
    parseJSON = withObject "MentionSpamTriggerMetadataResponse" $ \o ->
        MentionSpamTriggerMetadataResponse <$>
            o .: "mention_raid_protection_enabled"
            <*> o .: "mention_total_limit"