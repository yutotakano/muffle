{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ResourceChannelResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.SettingsEmojiResponse

data ResourceChannelResponse = ResourceChannelResponse
    { channelId :: SnowflakeType
    , description :: String
    , emoji :: Maybe SettingsEmojiResponse
    , icon :: Maybe String
    , title :: String
    }
    deriving (Show, Eq, Generic)
