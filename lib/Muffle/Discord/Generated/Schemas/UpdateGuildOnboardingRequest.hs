{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UpdateGuildOnboardingRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.GuildOnboardingMode
import Muffle.Discord.Generated.Schemas.UpdateOnboardingPromptRequest

data UpdateGuildOnboardingRequest = UpdateGuildOnboardingRequest
    { defaultChannelIds :: Maybe [SnowflakeType]
    , enabled :: Maybe (Maybe Bool)
    , mode :: Maybe (Maybe GuildOnboardingMode)
    , prompts :: Maybe [UpdateOnboardingPromptRequest]
    }
    deriving (Show, Eq, Generic)

instance FromJSON UpdateGuildOnboardingRequest where
    parseJSON = withObject "UpdateGuildOnboardingRequest" $ \o ->
        UpdateGuildOnboardingRequest <$>
            o .: "default_channel_ids"
            <*> o .: "enabled"
            <*> o .: "mode"
            <*> o .: "prompts"