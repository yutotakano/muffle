{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.UserPIIResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UserAvatarDecorationResponse
import Muffle.Discord.Generated.Schemas.UserCollectiblesResponse
import Muffle.Discord.Generated.Schemas.Int53Type
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.AvailableLocalesEnum
import Muffle.Discord.Generated.Schemas.PremiumTypes
import Muffle.Discord.Generated.Schemas.UserPrimaryGuildResponse

data UserPIIResponse = UserPIIResponse
    { accentColor :: Maybe (Maybe Int32)
    , avatar :: Maybe String
    , avatarDecorationData :: Maybe (Maybe UserAvatarDecorationResponse)
    , banner :: Maybe (Maybe String)
    , bot :: Maybe Bool
    , collectibles :: Maybe (Maybe UserCollectiblesResponse)
    , discriminator :: String
    , email :: Maybe (Maybe String)
    , flags :: Int53Type
    , globalName :: Maybe String
    , id :: SnowflakeType
    , locale :: AvailableLocalesEnum
    , mfaEnabled :: Bool
    , premiumType :: Maybe PremiumTypes
    , primaryGuild :: Maybe (Maybe UserPrimaryGuildResponse)
    , publicFlags :: Int32
    , system :: Maybe Bool
    , username :: String
    , verified :: Maybe Bool
    }
    deriving (Show, Eq, Generic)

instance FromJSON UserPIIResponse where
    parseJSON = withObject "UserPIIResponse" $ \o ->
        UserPIIResponse <$>
            o .: "accent_color"
            <*> o .: "avatar"
            <*> o .: "avatar_decoration_data"
            <*> o .: "banner"
            <*> o .: "bot"
            <*> o .: "collectibles"
            <*> o .: "discriminator"
            <*> o .: "email"
            <*> o .: "flags"
            <*> o .: "global_name"
            <*> o .: "id"
            <*> o .: "locale"
            <*> o .: "mfa_enabled"
            <*> o .: "premium_type"
            <*> o .: "primary_guild"
            <*> o .: "public_flags"
            <*> o .: "system"
            <*> o .: "username"
            <*> o .: "verified"