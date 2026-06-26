{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.NewMemberActionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.NewMemberActionType
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.SettingsEmojiResponse

data NewMemberActionResponse = NewMemberActionResponse
    { actionType :: NewMemberActionType
    , channelId :: SnowflakeType
    , description :: String
    , emoji :: SettingsEmojiResponse
    , icon :: String
    , title :: String
    }
    deriving (Show, Eq, Generic)
