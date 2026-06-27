{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildHomeSettingsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.NewMemberActionResponse
import Muffle.Discord.Generated.Schemas.ResourceChannelResponse
import Muffle.Discord.Generated.Schemas.WelcomeMessageResponse

data GuildHomeSettingsResponse = GuildHomeSettingsResponse
    { enabled :: Bool
    , guildId :: SnowflakeType
    , newMemberActions :: [NewMemberActionResponse]
    , resourceChannels :: [ResourceChannelResponse]
    , welcomeMessage :: Maybe WelcomeMessageResponse
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildHomeSettingsResponse where
    parseJSON = withObject "GuildHomeSettingsResponse" $ \o ->
        GuildHomeSettingsResponse <$>
            o .: "enabled"
            <*> o .: "guild_id"
            <*> o .: "new_member_actions"
            <*> o .: "resource_channels"
            <*> o .: "welcome_message"