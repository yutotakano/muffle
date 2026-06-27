{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.RichEmbedProvider where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data RichEmbedProvider = RichEmbedProvider
    { name :: Maybe (Maybe String)
    , url :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON RichEmbedProvider where
    parseJSON = withObject "RichEmbedProvider" $ \o ->
        RichEmbedProvider <$>
            o .: "name"
            <*> o .: "url"