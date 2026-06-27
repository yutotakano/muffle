{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.MessageAttachmentRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.SnowflakeType

data MessageAttachmentRequest = MessageAttachmentRequest
    { description :: Maybe (Maybe String)
    , durationSecs :: Maybe (Maybe Integer)
    , filename :: Maybe (Maybe String)
    , id :: SnowflakeType
    , isRemix :: Maybe (Maybe Bool)
    , isSpoiler :: Maybe (Maybe Bool)
    , title :: Maybe (Maybe String)
    , waveform :: Maybe (Maybe String)
    }
    deriving (Show, Eq, Generic)

instance FromJSON MessageAttachmentRequest where
    parseJSON = withObject "MessageAttachmentRequest" $ \o ->
        MessageAttachmentRequest <$>
            o .: "description"
            <*> o .: "duration_secs"
            <*> o .: "filename"
            <*> o .: "id"
            <*> o .: "is_remix"
            <*> o .: "is_spoiler"
            <*> o .: "title"
            <*> o .: "waveform"