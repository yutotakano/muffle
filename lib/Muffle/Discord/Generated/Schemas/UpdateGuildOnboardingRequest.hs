{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UpdateGuildOnboardingRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.GuildOnboardingMode
import Muffle.Discord.Generated.Schemas.UpdateOnboardingPromptRequest

data UpdateGuildOnboardingRequest = UpdateGuildOnboardingRequest
    { defaultChannelIds :: [SnowflakeType]
    , enabled :: Maybe Bool
    , mode :: Maybe GuildOnboardingMode
    , prompts :: [UpdateOnboardingPromptRequest]
    }
    deriving (Show, Eq, Generic)
