{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.InviteGuildResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.GuildFeatures
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.GuildNSFWContentLevel
import Muffle.Discord.Generated.Schemas.VerificationLevels

data InviteGuildResponse = InviteGuildResponse
    { banner :: Maybe String
    , description :: Maybe String
    , features :: [GuildFeatures]
    , icon :: Maybe String
    , id :: SnowflakeType
    , name :: String
    , nsfw :: Maybe Bool
    , nsfwLevel :: Maybe GuildNSFWContentLevel
    , premiumSubscriptionCount :: Int32
    , splash :: Maybe String
    , vanityUrlCode :: Maybe String
    , verificationLevel :: Maybe VerificationLevels
    }
    deriving (Show, Eq, Generic)

instance FromJSON InviteGuildResponse where
    parseJSON = withObject "InviteGuildResponse" $ \o ->
        InviteGuildResponse <$>
            o .: "banner"
            <*> o .: "description"
            <*> o .: "features"
            <*> o .: "icon"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "nsfw"
            <*> o .: "nsfw_level"
            <*> o .: "premium_subscription_count"
            <*> o .: "splash"
            <*> o .: "vanity_url_code"
            <*> o .: "verification_level"