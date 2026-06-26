{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.UserResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UserAvatarDecorationResponse
import Muffle.Discord.Generated.Schemas.UserCollectiblesResponse
import Muffle.Discord.Generated.Schemas.Int53Type
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.UserPrimaryGuildResponse

data UserResponse = UserResponse
    { accentColor :: Maybe Int32
    , avatar :: Maybe String
    , avatarDecorationData :: Maybe UserAvatarDecorationResponse
    , banner :: Maybe String
    , bot :: Bool
    , collectibles :: Maybe UserCollectiblesResponse
    , discriminator :: String
    , flags :: Int53Type
    , globalName :: Maybe String
    , id :: SnowflakeType
    , primaryGuild :: Maybe UserPrimaryGuildResponse
    , publicFlags :: Int32
    , system :: Bool
    , username :: String
    }
    deriving (Show, Eq, Generic)
