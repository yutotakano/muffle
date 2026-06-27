{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MediaGalleryItemResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UnfurledMediaResponse

data MediaGalleryItemResponse = MediaGalleryItemResponse
    { description :: Maybe String
    , media :: UnfurledMediaResponse
    , spoiler :: Bool
    }
    deriving (Show, Eq, Generic)

instance FromJSON MediaGalleryItemResponse where
    parseJSON = withObject "MediaGalleryItemResponse" $ \o ->
        MediaGalleryItemResponse <$>
            o .: "description"
            <*> o .: "media"
            <*> o .: "spoiler"