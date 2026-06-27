{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.FileComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UnfurledMediaResponse
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data FileComponentResponse = FileComponentResponse
    { file :: UnfurledMediaResponse
    , id :: Int32
    , name :: Maybe String
    , size :: Maybe Int32
    , spoiler :: Bool
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON FileComponentResponse where
    parseJSON = withObject "FileComponentResponse" $ \o ->
        FileComponentResponse <$>
            o .: "file"
            <*> o .: "id"
            <*> o .: "name"
            <*> o .: "size"
            <*> o .: "spoiler"
            <*> o .: "type"