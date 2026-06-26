{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.GuildPreviewResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.EmojiResponse
import Muffle.Discord.Generated.Schemas.GuildFeatures
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.GuildStickerResponse

data GuildPreviewResponse = GuildPreviewResponse
    { approximateMemberCount :: Int32
    , approximatePresenceCount :: Int32
    , description :: Maybe String
    , discoverySplash :: Maybe String
    , emojis :: [EmojiResponse]
    , features :: [GuildFeatures]
    , homeHeader :: Maybe String
    , icon :: Maybe String
    , id :: SnowflakeType
    , name :: String
    , splash :: Maybe String
    , stickers :: [GuildStickerResponse]
    }
    deriving (Show, Eq, Generic)
