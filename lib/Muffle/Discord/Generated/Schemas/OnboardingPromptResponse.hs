{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.OnboardingPromptResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
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

instance FromJSON OnboardingPromptResponse where
    parseJSON = withObject "OnboardingPromptResponse" $ \o ->
        OnboardingPromptResponse <$>
            o .: "id"
            <*> o .: "in_onboarding"
            <*> o .: "options"
            <*> o .: "required"
            <*> o .: "single_select"
            <*> o .: "title"
            <*> o .: "type"