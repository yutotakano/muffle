{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageEmbedVideoResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UInt32Type

data MessageEmbedVideoResponse = MessageEmbedVideoResponse
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

instance FromJSON MessageEmbedVideoResponse where
    parseJSON = withObject "MessageEmbedVideoResponse" $ \o ->
        MessageEmbedVideoResponse <$>
            o .: "content_type"
            <*> o .: "description"
            <*> o .: "flags"
            <*> o .: "height"
            <*> o .: "placeholder"
            <*> o .: "placeholder_version"
            <*> o .: "proxy_url"
            <*> o .: "url"
            <*> o .: "width"