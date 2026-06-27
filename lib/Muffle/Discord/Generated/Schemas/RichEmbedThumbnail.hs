{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.RichEmbedThumbnail where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data RichEmbedThumbnail = RichEmbedThumbnail
    { description :: Maybe (Maybe String)
    , height :: Maybe (Maybe Integer)
    , isAnimated :: Maybe (Maybe Bool)
    , placeholder :: Maybe (Maybe String)
    , placeholderVersion :: Maybe (Maybe Integer)
    , url :: Maybe (Maybe String)
    , width :: Maybe (Maybe Integer)
    }
    deriving (Show, Eq, Generic)

instance FromJSON RichEmbedThumbnail where
    parseJSON = withObject "RichEmbedThumbnail" $ \o ->
        RichEmbedThumbnail <$>
            o .: "description"
            <*> o .: "height"
            <*> o .: "is_animated"
            <*> o .: "placeholder"
            <*> o .: "placeholder_version"
            <*> o .: "url"
            <*> o .: "width"