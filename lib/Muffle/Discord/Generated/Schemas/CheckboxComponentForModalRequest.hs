{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CheckboxComponentForModalRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data CheckboxComponentForModalRequest = CheckboxComponentForModalRequest
    { customId :: String
    , default' :: Maybe Bool
    , id :: Maybe Int32
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
