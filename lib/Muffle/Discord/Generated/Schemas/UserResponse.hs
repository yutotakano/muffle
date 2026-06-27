{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UserResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UserAvatarDecorationResponse
import Muffle.Discord.Generated.Schemas.UserCollectiblesResponse
import Muffle.Discord.Generated.Schemas.Int53Type
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UserPrimaryGuildResponse

data UserResponse = UserResponse
    { accentColor :: Maybe (Maybe Int32)
    , avatar :: Maybe String
    , avatarDecorationData :: Maybe (Maybe UserAvatarDecorationResponse)
    , banner :: Maybe (Maybe String)
    , bot :: Maybe Bool
    , collectibles :: Maybe (Maybe UserCollectiblesResponse)
    , discriminator :: String
    , flags :: Int53Type
    , globalName :: Maybe String
    , id :: SnowflakeType
    , primaryGuild :: Maybe UserPrimaryGuildResponse
    , publicFlags :: Int32
    , system :: Maybe Bool
    , username :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON UserResponse where
    parseJSON = withObject "UserResponse" $ \o ->
        UserResponse <$>
            o .: "accent_color"
            <*> o .: "avatar"
            <*> o .: "avatar_decoration_data"
            <*> o .: "banner"
            <*> o .: "bot"
            <*> o .: "collectibles"
            <*> o .: "discriminator"
            <*> o .: "flags"
            <*> o .: "global_name"
            <*> o .: "id"
            <*> o .: "primary_guild"
            <*> o .: "public_flags"
            <*> o .: "system"
            <*> o .: "username"