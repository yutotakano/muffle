{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ThumbnailComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UnfurledMediaResponse
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data ThumbnailComponentResponse = ThumbnailComponentResponse
    { description :: Maybe String
    , id :: Int32
    , media :: UnfurledMediaResponse
    , spoiler :: Bool
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
