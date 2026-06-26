{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ThumbnailComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
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
