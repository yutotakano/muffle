{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MediaGalleryComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MediaGalleryItemResponse
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data MediaGalleryComponentResponse = MediaGalleryComponentResponse
    { id :: Int32
    , items :: [MediaGalleryItemResponse]
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
