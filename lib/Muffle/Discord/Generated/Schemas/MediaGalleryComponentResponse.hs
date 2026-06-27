{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MediaGalleryComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MediaGalleryItemResponse
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data MediaGalleryComponentResponse = MediaGalleryComponentResponse
    { id :: Int32
    , items :: [MediaGalleryItemResponse]
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON MediaGalleryComponentResponse where
    parseJSON = withObject "MediaGalleryComponentResponse" $ \o ->
        MediaGalleryComponentResponse <$>
            o .: "id"
            <*> o .: "items"
            <*> o .: "type"