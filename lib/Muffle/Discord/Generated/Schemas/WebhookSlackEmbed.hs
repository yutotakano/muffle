{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.WebhookSlackEmbed where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.WebhookSlackEmbedField

data WebhookSlackEmbed = WebhookSlackEmbed
    { authorIcon :: Maybe (Maybe String)
    , authorLink :: Maybe (Maybe String)
    , authorName :: Maybe (Maybe String)
    , color :: Maybe (Maybe String)
    , fields :: Maybe [WebhookSlackEmbedField]
    , footer :: Maybe (Maybe String)
    , footerIcon :: Maybe (Maybe String)
    , imageUrl :: Maybe (Maybe String)
    , pretext :: Maybe (Maybe String)
    , text :: Maybe (Maybe String)
    , thumbUrl :: Maybe (Maybe String)
    , title :: Maybe (Maybe String)
    , titleLink :: Maybe (Maybe String)
    , ts :: Maybe (Maybe Integer)
    }
    deriving (Show, Eq, Generic)

instance FromJSON WebhookSlackEmbed where
    parseJSON = withObject "WebhookSlackEmbed" $ \o ->
        WebhookSlackEmbed <$>
            o .: "author_icon"
            <*> o .: "author_link"
            <*> o .: "author_name"
            <*> o .: "color"
            <*> o .: "fields"
            <*> o .: "footer"
            <*> o .: "footer_icon"
            <*> o .: "image_url"
            <*> o .: "pretext"
            <*> o .: "text"
            <*> o .: "thumb_url"
            <*> o .: "title"
            <*> o .: "title_link"
            <*> o .: "ts"