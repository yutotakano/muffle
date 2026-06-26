{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageAttachmentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationResponse
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType

data MessageAttachmentResponse = MessageAttachmentResponse
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
