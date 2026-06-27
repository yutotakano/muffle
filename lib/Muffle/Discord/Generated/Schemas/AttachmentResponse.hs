{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Muffle.Discord.Generated.Schemas.AttachmentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Data.Aeson hiding (Result(Error))
import Control.Applicative ((<|>))
import Muffle.Discord.Generated.Schemas.ApplicationResponse
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType

data AttachmentResponse = AttachmentResponse
    { application :: Maybe ApplicationResponse
    , clipCreatedAt :: Maybe String
    , clipParticipants :: Maybe [UserResponse]
    , contentType :: Maybe String
    , description :: Maybe String
    , durationSecs :: Maybe Integer
    , ephemeral :: Maybe Bool
    , filename :: String
    , flags :: Maybe Int32
    , height :: Maybe Int32
    , id :: SnowflakeType
    , placeholder :: Maybe String
    , placeholderVersion :: Maybe Int32
    , proxyUrl :: String
    , size :: Int32
    , title :: Maybe (Maybe String)
    , url :: String
    , waveform :: Maybe String
    , width :: Maybe Int32
    }
    deriving (Show, Eq, Generic)

instance FromJSON AttachmentResponse where
    parseJSON = withObject "AttachmentResponse" $ \o ->
        AttachmentResponse <$>
            o .: "application"
            <*> o .: "clip_created_at"
            <*> o .: "clip_participants"
            <*> o .: "content_type"
            <*> o .: "description"
            <*> o .: "duration_secs"
            <*> o .: "ephemeral"
            <*> o .: "filename"
            <*> o .: "flags"
            <*> o .: "height"
            <*> o .: "id"
            <*> o .: "placeholder"
            <*> o .: "placeholder_version"
            <*> o .: "proxy_url"
            <*> o .: "size"
            <*> o .: "title"
            <*> o .: "url"
            <*> o .: "waveform"
            <*> o .: "width"