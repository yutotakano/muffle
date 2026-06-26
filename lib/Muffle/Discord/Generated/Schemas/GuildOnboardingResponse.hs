{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildOnboardingResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.GuildOnboardingMode
import Muffle.Discord.Generated.Schemas.OnboardingPromptResponse

data GuildOnboardingResponse = GuildOnboardingResponse
    { defaultChannelIds :: [SnowflakeType]
    , enabled :: Bool
    , guildId :: SnowflakeType
    , mode :: GuildOnboardingMode
    , prompts :: [OnboardingPromptResponse]
    }
    deriving (Show, Eq, Generic)
