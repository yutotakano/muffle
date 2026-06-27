{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.InviteGuildRoleResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.GuildRoleColorsResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType

data InviteGuildRoleResponse = InviteGuildRoleResponse
    { color :: Int32
    , colors :: GuildRoleColorsResponse
    , icon :: Maybe String
    , id :: SnowflakeType
    , name :: String
    , permissions :: Maybe String
    , position :: Int32
    , unicodeEmoji :: Maybe String
    }
    deriving (Show, Eq, Generic)

instance FromJSON InviteGuildRoleResponse where
    parseJSON = withObject "InviteGuildRoleResponse" $ \o ->
        InviteGuildRoleResponse <$>
            o .: "color"
            <*> o .: "colors"
            <*> o .: "icon"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "permissions"
            <*> o .: "position"
            <*> o .: "unicode_emoji"