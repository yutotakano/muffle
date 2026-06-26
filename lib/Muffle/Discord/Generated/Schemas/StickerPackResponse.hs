{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.StickerPackResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.StandardStickerResponse

data StickerPackResponse = StickerPackResponse
    { bannerAssetId :: SnowflakeType
    , coverStickerId :: SnowflakeType
    , description :: Maybe String
    , id :: SnowflakeType
    , name :: String
    , skuId :: SnowflakeType
    , stickers :: [StandardStickerResponse]
    }
    deriving (Show, Eq, Generic)
