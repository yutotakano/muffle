{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.RichEmbedAuthor where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data RichEmbedAuthor = RichEmbedAuthor
    { iconUrl :: Maybe (Maybe String)
    , name :: Maybe (Maybe String)
    , url :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON RichEmbedAuthor where
    parseJSON = withObject "RichEmbedAuthor" $ \o ->
        RichEmbedAuthor <$>
            o .: "icon_url"
            <*> o .: "name"
            <*> o .: "url"