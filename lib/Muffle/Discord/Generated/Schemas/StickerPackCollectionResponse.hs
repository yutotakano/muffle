{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.StickerPackCollectionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.StickerPackResponse

data StickerPackCollectionResponse = StickerPackCollectionResponse
    { stickerPacks :: [StickerPackResponse]
    }
    deriving (Show, Eq, Generic)
