{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.StandardStickerResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.StickerFormatTypes
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.StickerTypes

data StandardStickerResponse = StandardStickerResponse
    { description :: Maybe String
    , formatType :: Maybe StickerFormatTypes
    , id :: SnowflakeType
    , name :: String
    , packId :: SnowflakeType
    , sortValue :: Int32
    , tags :: String
    , type' :: StickerTypes
    }
    deriving (Show, Eq, Generic)
