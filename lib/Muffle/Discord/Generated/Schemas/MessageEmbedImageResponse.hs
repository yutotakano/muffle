{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageEmbedImageResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UInt32Type

data MessageEmbedImageResponse = MessageEmbedImageResponse
    { contentType :: String
    , description :: String
    , flags :: UInt32Type
    , height :: UInt32Type
    , placeholder :: String
    , placeholderVersion :: UInt32Type
    , proxyUrl :: String
    , url :: String
    , width :: UInt32Type
    }
    deriving (Show, Eq, Generic)
