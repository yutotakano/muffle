{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.FileComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.UnfurledMediaRequestWithAttachmentReferenceRequired
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data FileComponentForMessageRequest = FileComponentForMessageRequest
    { file :: UnfurledMediaRequestWithAttachmentReferenceRequired
    , id :: Maybe (Maybe Int32)
    , spoiler :: Maybe (Maybe Bool)
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)

instance FromJSON FileComponentForMessageRequest where
    parseJSON = withObject "FileComponentForMessageRequest" $ \o ->
        FileComponentForMessageRequest <$>
            o .: "file"
            <*> o .: "id"
            <*> o .: "spoiler"
            <*> o .: "type"