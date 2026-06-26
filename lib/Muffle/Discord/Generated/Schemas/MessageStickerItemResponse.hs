{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageStickerItemResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.StickerFormatTypes
import Muffle.Discord.Generated.Schemas.SnowflakeType

data MessageStickerItemResponse = MessageStickerItemResponse
    { formatType :: StickerFormatTypes
    , id :: SnowflakeType
    , name :: String
    }
    deriving (Show, Eq, Generic)
