{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.StandardStickerResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
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

instance FromJSON StandardStickerResponse where
    parseJSON = withObject "StandardStickerResponse" $ \o ->
        StandardStickerResponse <$>
            o .: "description"
            <*> o .: "format_type"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "pack_id"
            <*> o .: "sort_value"
            <*> o .: "tags"
            <*> o .: "type"