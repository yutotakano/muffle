{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildHomeSettingsResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.NewMemberActionResponse
import Muffle.Discord.Generated.Schemas.ResourceChannelResponse
import Muffle.Discord.Generated.Schemas.WelcomeMessageResponse

data GuildHomeSettingsResponse = GuildHomeSettingsResponse
    { enabled :: Bool
    , guildId :: SnowflakeType
    , newMemberActions :: [NewMemberActionResponse]
    , resourceChannels :: [ResourceChannelResponse]
    , welcomeMessage :: WelcomeMessageResponse
    }
    deriving (Show, Eq, Generic)
