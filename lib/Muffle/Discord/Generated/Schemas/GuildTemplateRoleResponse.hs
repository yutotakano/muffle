{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.GuildTemplateRoleResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.GuildTemplateRoleColorsResponse

data GuildTemplateRoleResponse = GuildTemplateRoleResponse
    { color :: Int32
    , colors :: Maybe GuildTemplateRoleColorsResponse
    , hoist :: Bool
    , icon :: Maybe String
    , id :: Int32
    , mentionable :: Bool
    , name :: String
    , permissions :: String
    , unicodeEmoji :: Maybe String
    }
    deriving (Show, Eq, Generic)

instance FromJSON GuildTemplateRoleResponse where
    parseJSON = withObject "GuildTemplateRoleResponse" $ \o ->
        GuildTemplateRoleResponse <$>
            o .: "color"
            <*> o .: "colors"
            <*> o .: "hoist"
            <*> o .: "icon"
            <*> o .: "id"
            <*> o .: "mentionable"
            <*> o .: "name"
            <*> o .: "permissions"
            <*> o .: "unicode_emoji"