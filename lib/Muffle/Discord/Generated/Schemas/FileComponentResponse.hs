{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.FileComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.UnfurledMediaResponse
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data FileComponentResponse = FileComponentResponse
    { file :: UnfurledMediaResponse
    , id :: Int32
    , name :: Maybe String
    , size :: Maybe Int32
    , spoiler :: Bool
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
