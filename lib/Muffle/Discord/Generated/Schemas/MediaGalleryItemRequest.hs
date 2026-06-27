{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MediaGalleryItemRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UnfurledMediaRequest

data MediaGalleryItemRequest = MediaGalleryItemRequest
    { description :: Maybe (Maybe String)
    , media :: UnfurledMediaRequest
    , spoiler :: Maybe (Maybe Bool)
    }
    deriving (Show, Eq, Generic)

instance FromJSON MediaGalleryItemRequest where
    parseJSON = withObject "MediaGalleryItemRequest" $ \o ->
        MediaGalleryItemRequest <$>
            o .: "description"
            <*> o .: "media"
            <*> o .: "spoiler"