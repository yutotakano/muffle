{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.MessageAttachmentRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
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
