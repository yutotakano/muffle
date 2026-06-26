{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MediaGalleryComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MediaGalleryItemRequest
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data MediaGalleryComponentForMessageRequest = MediaGalleryComponentForMessageRequest
    { id :: Maybe (Maybe Int32)
    , items :: [MediaGalleryItemRequest]
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
