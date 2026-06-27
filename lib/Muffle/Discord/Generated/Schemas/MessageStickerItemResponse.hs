{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageStickerItemResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.StickerFormatTypes
import Muffle.Discord.Generated.Schemas.SnowflakeType

data MessageStickerItemResponse = MessageStickerItemResponse
    { formatType :: StickerFormatTypes
    , id :: SnowflakeType
    , name :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageStickerItemResponse where
    parseJSON = withObject "MessageStickerItemResponse" $ \o ->
        MessageStickerItemResponse <$>
            o .: "format_type"
            <*> o .: "id"
            <*> o .: "name"