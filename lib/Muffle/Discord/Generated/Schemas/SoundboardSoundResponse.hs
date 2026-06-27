{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.SoundboardSoundResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UserResponse

data SoundboardSoundResponse = SoundboardSoundResponse
    { available :: Bool
    , emojiId :: Maybe SnowflakeType
    , emojiName :: Maybe String
    , guildId :: Maybe SnowflakeType
    , name :: String
    , soundId :: SnowflakeType
    , user :: Maybe UserResponse
    , volume :: Integer
    }
    deriving (Show, Eq, Generic)

instance FromJSON SoundboardSoundResponse where
    parseJSON = withObject "SoundboardSoundResponse" $ \o ->
        SoundboardSoundResponse <$>
            o .: "available"
            <*> o .: "emoji_id"
            <*> o .: "emoji_name"
            <*> o .: "guild_id"
            <*> o .: "name"
            <*> o .: "sound_id"
            <*> o .: "user"
            <*> o .: "volume"