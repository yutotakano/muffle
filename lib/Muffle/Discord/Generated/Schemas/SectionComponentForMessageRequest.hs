{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.SectionComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.TextDisplayComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.MessageComponentTypes
import Muffle.Discord.Generated.Schemas.ButtonComponentForMessageRequest
import Muffle.Discord.Generated.Schemas.ThumbnailComponentForMessageRequest

data SectionComponentForMessageRequest = SectionComponentForMessageRequest
    { accessory :: SectionComponentForMessageRequestAccessory
    , components :: [TextDisplayComponentForMessageRequest]
    , id :: Maybe Int32
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
data SectionComponentForMessageRequestAccessory = SectionComponentForMessageRequestAccessory0 ButtonComponentForMessageRequest | SectionComponentForMessageRequestAccessory1 ThumbnailComponentForMessageRequest
    deriving (Show, Eq, Generic)
