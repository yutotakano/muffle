{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.SeparatorComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageComponentSeparatorSpacingSize
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data SeparatorComponentResponse = SeparatorComponentResponse
    { divider :: Bool
    , id :: Int32
    , spacing :: MessageComponentSeparatorSpacingSize
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
