{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.OnboardingPromptOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
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

instance FromJSON OnboardingPromptOptionResponse where
    parseJSON = withObject "OnboardingPromptOptionResponse" $ \o ->
        OnboardingPromptOptionResponse <$>
            o .: "channel_ids"
            <*> o .: "description"
            <*> o .: "emoji"
            <*> o .: "id"
            <*> o .: "role_ids"
            <*> o .: "title"