{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.FileComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UnfurledMediaRequestWithAttachmentReferenceRequired
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data FileComponentForMessageRequest = FileComponentForMessageRequest
    { file :: UnfurledMediaRequestWithAttachmentReferenceRequired
    , id :: Maybe Int32
    , spoiler :: Maybe Bool
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
