{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.TextDisplayComponentForModalRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data TextDisplayComponentForModalRequest = TextDisplayComponentForModalRequest
    { content :: String
    , id :: Maybe Int32
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
