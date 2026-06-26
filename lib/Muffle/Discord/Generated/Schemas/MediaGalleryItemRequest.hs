{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MediaGalleryItemRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UnfurledMediaRequest

data MediaGalleryItemRequest = MediaGalleryItemRequest
    { description :: Maybe String
    , media :: UnfurledMediaRequest
    , spoiler :: Maybe Bool
    }
    deriving (Show, Eq, Generic)
