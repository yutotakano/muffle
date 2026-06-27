{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.RichEmbed where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.RichEmbedAuthor
import Muffle.Discord.Generated.Schemas.RichEmbedField
import Muffle.Discord.Generated.Schemas.RichEmbedFooter
import Muffle.Discord.Generated.Schemas.RichEmbedImage
import Muffle.Discord.Generated.Schemas.RichEmbedProvider
import Muffle.Discord.Generated.Schemas.RichEmbedThumbnail
import Muffle.Discord.Generated.Schemas.RichEmbedVideo

data RichEmbed = RichEmbed
    { author :: Maybe (Maybe RichEmbedAuthor)
    , color :: Maybe (Maybe Integer)
    , description :: Maybe (Maybe String)
    , fields :: Maybe [RichEmbedField]
    , footer :: Maybe (Maybe RichEmbedFooter)
    , image :: Maybe (Maybe RichEmbedImage)
    , provider :: Maybe (Maybe RichEmbedProvider)
    , thumbnail :: Maybe (Maybe RichEmbedThumbnail)
    , timestamp :: Maybe (Maybe String)
    , title :: Maybe (Maybe String)
    , type' :: Maybe (Maybe String)
    , url :: Maybe (Maybe String)
    , video :: Maybe (Maybe RichEmbedVideo)
    }
    deriving (Show, Eq, Generic)

instance FromJSON RichEmbed where
    parseJSON = withObject "RichEmbed" $ \o ->
        RichEmbed <$>
            o .: "author"
            <*> o .: "color"
            <*> o .: "description"
            <*> o .: "fields"
            <*> o .: "footer"
            <*> o .: "image"
            <*> o .: "provider"
            <*> o .: "thumbnail"
            <*> o .: "timestamp"
            <*> o .: "title"
            <*> o .: "type"
            <*> o .: "url"
            <*> o .: "video"