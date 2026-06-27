{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UpdateOnboardingPromptRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.OnboardingPromptOptionRequest
import Muffle.Discord.Generated.Schemas.OnboardingPromptType

data UpdateOnboardingPromptRequest = UpdateOnboardingPromptRequest
    { id :: SnowflakeType
    , inOnboarding :: Maybe (Maybe Bool)
    , options :: [OnboardingPromptOptionRequest]
    , required :: Maybe (Maybe Bool)
    , singleSelect :: Maybe (Maybe Bool)
    , title :: String
    , type' :: Maybe (Maybe OnboardingPromptType)
    }
    deriving (Show, Eq, Generic)

instance FromJSON UpdateOnboardingPromptRequest where
    parseJSON = withObject "UpdateOnboardingPromptRequest" $ \o ->
        UpdateOnboardingPromptRequest <$>
            o .: "id"
            <*> o .: "in_onboarding"
            <*> o .: "options"
            <*> o .: "required"
            <*> o .: "single_select"
            <*> o .: "title"
            <*> o .: "type"