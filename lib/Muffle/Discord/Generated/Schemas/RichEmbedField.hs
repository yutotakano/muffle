{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.RichEmbedField where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))

data RichEmbedField = RichEmbedField
    { inline :: Maybe (Maybe Bool)
    , name :: String
    , value :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON RichEmbedField where
    parseJSON = withObject "RichEmbedField" $ \o ->
        RichEmbedField <$>
            o .: "inline"
            <*> o .: "name"
            <*> o .: "value"