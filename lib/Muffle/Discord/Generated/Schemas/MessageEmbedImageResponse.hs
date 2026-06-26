{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageEmbedImageResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UInt32Type

data MessageEmbedImageResponse = MessageEmbedImageResponse
    { contentType :: Maybe String
    , description :: Maybe String
    , flags :: Maybe UInt32Type
    , height :: Maybe UInt32Type
    , placeholder :: Maybe String
    , placeholderVersion :: Maybe UInt32Type
    , proxyUrl :: Maybe String
    , url :: Maybe String
    , width :: Maybe UInt32Type
    }
    deriving (Show, Eq, Generic)
