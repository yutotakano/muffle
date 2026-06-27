{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UserGuildOnboardingResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.GuildOnboardingMode
import Muffle.Discord.Generated.Schemas.OnboardingPromptResponse

data UserGuildOnboardingResponse = UserGuildOnboardingResponse
    { defaultChannelIds :: [SnowflakeType]
    , enabled :: Bool
    , guildId :: SnowflakeType
    , mode :: GuildOnboardingMode
    , prompts :: [OnboardingPromptResponse]
    }
    deriving (Show, Eq, Generic)

instance FromJSON UserGuildOnboardingResponse where
    parseJSON = withObject "UserGuildOnboardingResponse" $ \o ->
        UserGuildOnboardingResponse <$>
            o .: "default_channel_ids"
            <*> o .: "enabled"
            <*> o .: "guild_id"
            <*> o .: "mode"
            <*> o .: "prompts"