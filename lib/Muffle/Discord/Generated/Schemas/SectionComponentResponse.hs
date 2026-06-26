{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.SectionComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.TextDisplayComponentResponse
import Muffle.Discord.Generated.Schemas.MessageComponentTypes
import Muffle.Discord.Generated.Schemas.ButtonComponentResponse
import Muffle.Discord.Generated.Schemas.ThumbnailComponentResponse

data SectionComponentResponse = SectionComponentResponse
    { accessory :: SectionComponentResponseAccessory
    , components :: [TextDisplayComponentResponse]
    , id :: Int32
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
data SectionComponentResponseAccessory = SectionComponentResponseAccessory0 ButtonComponentResponse | SectionComponentResponseAccessory1 ThumbnailComponentResponse
    deriving (Show, Eq, Generic)
