{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MediaGalleryComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MediaGalleryItemRequest
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data MediaGalleryComponentForMessageRequest = MediaGalleryComponentForMessageRequest
    { id :: Maybe (Maybe Int32)
    , items :: [MediaGalleryItemRequest]
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON MediaGalleryComponentForMessageRequest where
    parseJSON = withObject "MediaGalleryComponentForMessageRequest" $ \o ->
        MediaGalleryComponentForMessageRequest <$>
            o .: "id"
            <*> o .: "items"
            <*> o .: "type"