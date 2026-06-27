{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.PrivateGuildMemberResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UserAvatarDecorationResponse
import Muffle.Discord.Generated.Schemas.UserCollectiblesResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UserResponse

data PrivateGuildMemberResponse = PrivateGuildMemberResponse
    { avatar :: Maybe String
    , avatarDecorationData :: Maybe (Maybe UserAvatarDecorationResponse)
    , banner :: Maybe String
    , collectibles :: Maybe (Maybe UserCollectiblesResponse)
    , communicationDisabledUntil :: Maybe String
    , deaf :: Bool
    , flags :: Int32
    , joinedAt :: String
    , mute :: Bool
    , nick :: Maybe String
    , pending :: Bool
    , permissions :: Maybe String
    , premiumSince :: Maybe String
    , roles :: [SnowflakeType]
    , user :: UserResponse
    }
    deriving (Show, Eq, Generic)

instance FromJSON PrivateGuildMemberResponse where
    parseJSON = withObject "PrivateGuildMemberResponse" $ \o ->
        PrivateGuildMemberResponse <$>
            o .: "avatar"
            <*> o .: "avatar_decoration_data"
            <*> o .: "banner"
            <*> o .: "collectibles"
            <*> o .: "communication_disabled_until"
            <*> o .: "deaf"
            <*> o .: "flags"
            <*> o .: "joined_at"
            <*> o .: "mute"
            <*> o .: "nick"
            <*> o .: "pending"
            <*> o .: "permissions"
            <*> o .: "premium_since"
            <*> o .: "roles"
            <*> o .: "user"