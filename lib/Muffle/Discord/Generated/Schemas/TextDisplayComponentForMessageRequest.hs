{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.TextDisplayComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data TextDisplayComponentForMessageRequest = TextDisplayComponentForMessageRequest
    { content :: String
    , id :: Maybe (Maybe Int32)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON TextDisplayComponentForMessageRequest where
    parseJSON = withObject "TextDisplayComponentForMessageRequest" $ \o ->
        TextDisplayComponentForMessageRequest <$>
            o .: "content"
            <*> o .: "id"
            <*> o .: "type"