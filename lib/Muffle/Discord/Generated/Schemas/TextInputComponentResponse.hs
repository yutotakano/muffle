{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.TextInputComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.TextInputStyleTypes
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data TextInputComponentResponse = TextInputComponentResponse
    { customId :: String
    , id :: Int32
    , label :: Maybe String
    , maxLength :: Maybe Int32
    , minLength :: Maybe Int32
    , placeholder :: Maybe String
    , required :: Maybe Bool
    , style :: TextInputStyleTypes
    , type' :: MessageComponentTypes
    , value :: Maybe String
    }
    deriving (Show, Eq, Generic)

instance FromJSON TextInputComponentResponse where
    parseJSON = withObject "TextInputComponentResponse" $ \o ->
        TextInputComponentResponse <$>
            o .: "custom_id"
            <*> o .: "id"
            <*> o .: "label"
            <*> o .: "max_length"
            <*> o .: "min_length"
            <*> o .: "placeholder"
            <*> o .: "required"
            <*> o .: "style"
            <*> o .: "type"
            <*> o .: "value"