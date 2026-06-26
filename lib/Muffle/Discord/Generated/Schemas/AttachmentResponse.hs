{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.AttachmentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationResponse
import Muffle.Discord.Generated.Schemas.UserResponse
import Muffle.Discord.Generated.Schemas.SnowflakeType

data AttachmentResponse = AttachmentResponse
    { application :: ApplicationResponse
    , clipCreatedAt :: String
    , clipParticipants :: [UserResponse]
    , contentType :: String
    , description :: String
    , durationSecs :: Integer
    , ephemeral :: Bool
    , filename :: String
    , flags :: Int32
    , height :: Int32
    , id :: SnowflakeType
    , placeholder :: String
    , placeholderVersion :: Int32
    , proxyUrl :: String
    , size :: Int32
    , title :: Maybe String
    , url :: String
    , waveform :: String
    , width :: Int32
    }
    deriving (Show, Eq, Generic)
