{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.ThumbnailComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UnfurledMediaRequest
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data ThumbnailComponentForMessageRequest = ThumbnailComponentForMessageRequest
    { description :: Maybe (Maybe String)
    , id :: Maybe (Maybe Int32)
    , media :: UnfurledMediaRequest
    , spoiler :: Maybe (Maybe Bool)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON ThumbnailComponentForMessageRequest where
    parseJSON = withObject "ThumbnailComponentForMessageRequest" $ \o ->
        ThumbnailComponentForMessageRequest <$>
            o .: "description"
            <*> o .: "id"
            <*> o .: "media"
            <*> o .: "spoiler"
            <*> o .: "type"