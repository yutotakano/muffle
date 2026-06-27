{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildRoleResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.GuildRoleColorsResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.GuildRoleTagsResponse

data GuildRoleResponse = GuildRoleResponse
    { color :: Int32
    , colors :: GuildRoleColorsResponse
    , flags :: Int32
    , hoist :: Bool
    , icon :: Maybe String
    , id :: SnowflakeType
    , managed :: Bool
    , mentionable :: Bool
    , name :: String
    , permissions :: String
    , position :: Int32
    , tags :: Maybe GuildRoleTagsResponse
    , unicodeEmoji :: Maybe String
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildRoleResponse where
    parseJSON = withObject "GuildRoleResponse" $ \o ->
        GuildRoleResponse <$>
            o .: "color"
            <*> o .: "colors"
            <*> o .: "flags"
            <*> o .: "hoist"
            <*> o .: "icon"
            <*> o .: "id"
            <*> o .: "managed"
            <*> o .: "mentionable"
            <*> o .: "name"
            <*> o .: "permissions"
            <*> o .: "position"
            <*> o .: "tags"
            <*> o .: "unicode_emoji"