{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.TextDisplayComponentForModalRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data TextDisplayComponentForModalRequest = TextDisplayComponentForModalRequest
    { content :: String
    , id :: Maybe (Maybe Int32)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON TextDisplayComponentForModalRequest where
    parseJSON = withObject "TextDisplayComponentForModalRequest" $ \o ->
        TextDisplayComponentForModalRequest <$>
            o .: "content"
            <*> o .: "id"
            <*> o .: "type"