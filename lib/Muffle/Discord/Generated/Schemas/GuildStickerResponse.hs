{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildStickerResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.StickerFormatTypes
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.StickerTypes
import Muffle.Discord.Generated.Schemas.UserResponse

data GuildStickerResponse = GuildStickerResponse
    { available :: Bool
    , description :: Maybe String
    , formatType :: Maybe StickerFormatTypes
    , guildId :: SnowflakeType
    , id :: SnowflakeType
    , name :: String
    , tags :: String
    , type' :: StickerTypes
    , user :: Maybe UserResponse
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildStickerResponse where
    parseJSON = withObject "GuildStickerResponse" $ \o ->
        GuildStickerResponse <$>
            o .: "available"
            <*> o .: "description"
            <*> o .: "format_type"
            <*> o .: "guild_id"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "tags"
            <*> o .: "type"
            <*> o .: "user"