{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.PrivateGuildMemberResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
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
