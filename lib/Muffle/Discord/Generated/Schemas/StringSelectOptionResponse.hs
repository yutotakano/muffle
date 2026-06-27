{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.StringSelectOptionResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ComponentEmojiResponse

data StringSelectOptionResponse = StringSelectOptionResponse
    { default' :: Maybe Bool
    , description :: Maybe String
    , emoji :: Maybe ComponentEmojiResponse
    , label :: String
    , value :: String
    }
    deriving (Show, Eq, Generic)

instance FromJSON StringSelectOptionResponse where
    parseJSON = withObject "StringSelectOptionResponse" $ \o ->
        StringSelectOptionResponse <$>
            o .: "default"
            <*> o .: "description"
            <*> o .: "emoji"
            <*> o .: "label"
            <*> o .: "value"