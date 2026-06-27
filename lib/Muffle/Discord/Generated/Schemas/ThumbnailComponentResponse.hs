{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ThumbnailComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
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

instance FromJSON ThumbnailComponentResponse where
    parseJSON = withObject "ThumbnailComponentResponse" $ \o ->
        ThumbnailComponentResponse <$>
            o .: "description"
            <*> o .: "id"
            <*> o .: "media"
            <*> o .: "spoiler"
            <*> o .: "type"