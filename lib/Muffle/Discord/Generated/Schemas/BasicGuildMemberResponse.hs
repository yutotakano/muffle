{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.BasicGuildMemberResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UserAvatarDecorationResponse
import Muffle.Discord.Generated.Schemas.UserCollectiblesResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType

data BasicGuildMemberResponse = BasicGuildMemberResponse
    { avatar :: Maybe String
    , avatarDecorationData :: Maybe (Maybe UserAvatarDecorationResponse)
    , banner :: Maybe String
    , collectibles :: Maybe (Maybe UserCollectiblesResponse)
    , communicationDisabledUntil :: Maybe String
    , flags :: Int32
    , joinedAt :: String
    , nick :: Maybe String
    , pending :: Bool
    , premiumSince :: Maybe String
    , roles :: [SnowflakeType]
    }
    deriving (Show, Eq, Generic)

instance FromJSON BasicGuildMemberResponse where
    parseJSON = withObject "BasicGuildMemberResponse" $ \o ->
        BasicGuildMemberResponse <$>
            o .: "avatar"
            <*> o .: "avatar_decoration_data"
            <*> o .: "banner"
            <*> o .: "collectibles"
            <*> o .: "communication_disabled_until"
            <*> o .: "flags"
            <*> o .: "joined_at"
            <*> o .: "nick"
            <*> o .: "pending"
            <*> o .: "premium_since"
            <*> o .: "roles"