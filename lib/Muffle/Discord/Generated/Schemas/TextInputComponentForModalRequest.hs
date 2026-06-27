{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.TextInputComponentForModalRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.TextInputStyleTypes
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data TextInputComponentForModalRequest = TextInputComponentForModalRequest
    { customId :: String
    , id :: Maybe (Maybe Int32)
    , label :: Maybe (Maybe String)
    , maxLength :: Maybe (Maybe Integer)
    , minLength :: Maybe (Maybe Integer)
    , placeholder :: Maybe (Maybe String)
    , required :: Maybe (Maybe Bool)
    , style :: TextInputStyleTypes
    , type' :: MessageComponentTypes
    , value :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON TextInputComponentForModalRequest where
    parseJSON = withObject "TextInputComponentForModalRequest" $ \o ->
        TextInputComponentForModalRequest <$>
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