{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.NewMemberActionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.NewMemberActionType
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.SettingsEmojiResponse

data NewMemberActionResponse = NewMemberActionResponse
    { actionType :: NewMemberActionType
    , channelId :: SnowflakeType
    , description :: String
    , emoji :: Maybe SettingsEmojiResponse
    , icon :: Maybe String
    , title :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON NewMemberActionResponse where
    parseJSON = withObject "NewMemberActionResponse" $ \o ->
        NewMemberActionResponse <$>
            o .: "action_type"
            <*> o .: "channel_id"
            <*> o .: "description"
            <*> o .: "emoji"
            <*> o .: "icon"
            <*> o .: "title"