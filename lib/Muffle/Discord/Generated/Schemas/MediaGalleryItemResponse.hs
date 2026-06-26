{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MediaGalleryItemResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UnfurledMediaResponse

data MediaGalleryItemResponse = MediaGalleryItemResponse
    { description :: Maybe String
    , media :: UnfurledMediaResponse
    , spoiler :: Bool
    }
    deriving (Show, Eq, Generic)
