{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.StringSelectOptionForRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ComponentEmojiForRequest

data StringSelectOptionForRequest = StringSelectOptionForRequest
    { default' :: Maybe (Maybe Bool)
    , description :: Maybe (Maybe String)
    , emoji :: Maybe (Maybe ComponentEmojiForRequest)
    , label :: String
    , value :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON StringSelectOptionForRequest where
    parseJSON = withObject "StringSelectOptionForRequest" $ \o ->
        StringSelectOptionForRequest <$>
            o .: "default"
            <*> o .: "description"
            <*> o .: "emoji"
            <*> o .: "label"
            <*> o .: "value"