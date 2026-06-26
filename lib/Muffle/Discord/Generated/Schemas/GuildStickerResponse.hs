{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildStickerResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.StickerFormatTypes
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.StickerTypes
import Muffle.Discord.Generated.Schemas.UserResponse

data GuildStickerResponse = GuildStickerResponse
    { available :: Bool
    , description :: Maybe String
    , formatType :: Maybe StickerFormatTypes
    , guildId :: SnowflakeType
    , id :: SnowflakeType
    , name :: String
    , tags :: String
    , type' :: StickerTypes
    , user :: Maybe UserResponse
    }
    deriving (Show, Eq, Generic)
