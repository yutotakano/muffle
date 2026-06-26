{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.SeparatorComponentForMessageRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageComponentSeparatorSpacingSize
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data SeparatorComponentForMessageRequest = SeparatorComponentForMessageRequest
    { divider :: Maybe Bool
    , id :: Maybe Int32
    , spacing :: Maybe MessageComponentSeparatorSpacingSize
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
