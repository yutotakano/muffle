{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.OnboardingPromptOptionRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data OnboardingPromptOptionRequest = OnboardingPromptOptionRequest
    { channelIds :: Maybe [SnowflakeType]
    , description :: Maybe (Maybe String)
    , emojiAnimated :: Maybe (Maybe Bool)
    , emojiId :: Maybe (Maybe SnowflakeType)
    , emojiName :: Maybe (Maybe String)
    , id :: Maybe (Maybe SnowflakeType)
    , roleIds :: Maybe [SnowflakeType]
    , title :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON OnboardingPromptOptionRequest where
    parseJSON = withObject "OnboardingPromptOptionRequest" $ \o ->
        OnboardingPromptOptionRequest <$>
            o .: "channel_ids"
            <*> o .: "description"
            <*> o .: "emoji_animated"
            <*> o .: "emoji_id"
            <*> o .: "emoji_name"
            <*> o .: "id"
            <*> o .: "role_ids"
            <*> o .: "title"