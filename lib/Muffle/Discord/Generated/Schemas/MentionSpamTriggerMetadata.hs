{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MentionSpamTriggerMetadata where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))

data MentionSpamTriggerMetadata = MentionSpamTriggerMetadata
    { mentionRaidProtectionEnabled :: Maybe (Maybe Bool)
    , mentionTotalLimit :: Maybe (Maybe Integer)
    }
    deriving (Show, Eq, Generic)

instance FromJSON MentionSpamTriggerMetadata where
    parseJSON = withObject "MentionSpamTriggerMetadata" $ \o ->
        MentionSpamTriggerMetadata <$>
            o .: "mention_raid_protection_enabled"
            <*> o .: "mention_total_limit"