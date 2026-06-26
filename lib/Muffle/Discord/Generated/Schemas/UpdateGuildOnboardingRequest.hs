{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UpdateGuildOnboardingRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
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
