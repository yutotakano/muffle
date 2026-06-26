{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.OnboardingPromptResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.OnboardingPromptOptionResponse
import Muffle.Discord.Generated.Schemas.OnboardingPromptType

data OnboardingPromptResponse = OnboardingPromptResponse
    { id :: SnowflakeType
    , inOnboarding :: Bool
    , options :: [OnboardingPromptOptionResponse]
    , required :: Bool
    , singleSelect :: Bool
    , title :: String
    , type' :: OnboardingPromptType
    }
    deriving (Show, Eq, Generic)
