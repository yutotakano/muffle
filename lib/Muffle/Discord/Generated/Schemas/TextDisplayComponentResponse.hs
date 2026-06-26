{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.TextDisplayComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data TextDisplayComponentResponse = TextDisplayComponentResponse
    { content :: String
    , id :: Int32
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
