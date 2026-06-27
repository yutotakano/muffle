{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.TextDisplayComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data TextDisplayComponentResponse = TextDisplayComponentResponse
    { content :: String
    , id :: Int32
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON TextDisplayComponentResponse where
    parseJSON = withObject "TextDisplayComponentResponse" $ \o ->
        TextDisplayComponentResponse <$>
            o .: "content"
            <*> o .: "id"
            <*> o .: "type"