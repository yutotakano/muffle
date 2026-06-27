{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.StickerPackCollectionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.StickerPackResponse

data StickerPackCollectionResponse = StickerPackCollectionResponse
    { stickerPacks :: [StickerPackResponse]
    }
    deriving (Show, Eq, Generic)

instance FromJSON StickerPackCollectionResponse where
    parseJSON = withObject "StickerPackCollectionResponse" $ \o ->
        StickerPackCollectionResponse <$>
            o .: "sticker_packs"