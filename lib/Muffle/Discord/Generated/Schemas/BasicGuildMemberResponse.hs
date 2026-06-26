{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.BasicGuildMemberResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UserAvatarDecorationResponse
import Muffle.Discord.Generated.Schemas.UserCollectiblesResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType

data BasicGuildMemberResponse = BasicGuildMemberResponse
    { avatar :: Maybe String
    , avatarDecorationData :: Maybe UserAvatarDecorationResponse
    , banner :: Maybe String
    , collectibles :: Maybe UserCollectiblesResponse
    , communicationDisabledUntil :: Maybe String
    , flags :: Int32
    , joinedAt :: String
    , nick :: Maybe String
    , pending :: Bool
    , premiumSince :: Maybe String
    , roles :: [SnowflakeType]
    }
    deriving (Show, Eq, Generic)
