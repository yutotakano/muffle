{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageAttachmentRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.SnowflakeType

data MessageAttachmentRequest = MessageAttachmentRequest
    { description :: Maybe String
    , durationSecs :: Maybe Integer
    , filename :: Maybe String
    , id :: SnowflakeType
    , isRemix :: Maybe Bool
    , isSpoiler :: Maybe Bool
    , title :: Maybe String
    , waveform :: Maybe String
    }
    deriving (Show, Eq, Generic)
