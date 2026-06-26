{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.OnboardingPromptOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.SettingsEmojiResponse

data OnboardingPromptOptionResponse = OnboardingPromptOptionResponse
    { channelIds :: [SnowflakeType]
    , description :: String
    , emoji :: SettingsEmojiResponse
    , id :: SnowflakeType
    , roleIds :: [SnowflakeType]
    , title :: String
    }
    deriving (Show, Eq, Generic)
