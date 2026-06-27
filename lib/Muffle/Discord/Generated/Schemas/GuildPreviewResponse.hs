{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildPreviewResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.EmojiResponse
import Muffle.Discord.Generated.Schemas.GuildFeatures
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.GuildStickerResponse

data GuildPreviewResponse = GuildPreviewResponse
    { approximateMemberCount :: Int32
    , approximatePresenceCount :: Int32
    , description :: Maybe String
    , discoverySplash :: Maybe String
    , emojis :: [EmojiResponse]
    , features :: [GuildFeatures]
    , homeHeader :: Maybe String
    , icon :: Maybe String
    , id :: SnowflakeType
    , name :: String
    , splash :: Maybe String
    , stickers :: [GuildStickerResponse]
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildPreviewResponse where
    parseJSON = withObject "GuildPreviewResponse" $ \o ->
        GuildPreviewResponse <$>
            o .: "approximate_member_count"
            <*> o .: "approximate_presence_count"
            <*> o .: "description"
            <*> o .: "discovery_splash"
            <*> o .: "emojis"
            <*> o .: "features"
            <*> o .: "home_header"
            <*> o .: "icon"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "splash"
            <*> o .: "stickers"