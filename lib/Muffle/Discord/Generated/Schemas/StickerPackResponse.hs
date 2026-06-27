{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.StickerPackResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType
import Muffle.Discord.Generated.Schemas.StandardStickerResponse

data StickerPackResponse = StickerPackResponse
    { bannerAssetId :: Maybe SnowflakeType
    , coverStickerId :: Maybe SnowflakeType
    , description :: Maybe String
    , id :: SnowflakeType
    , name :: String
    , skuId :: SnowflakeType
    , stickers :: [StandardStickerResponse]
    }
    deriving (Show, Eq, Generic)

instance FromJSON StickerPackResponse where
    parseJSON = withObject "StickerPackResponse" $ \o ->
        StickerPackResponse <$>
            o .: "banner_asset_id"
            <*> o .: "cover_sticker_id"
            <*> o .: "description"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "sku_id"
            <*> o .: "stickers"