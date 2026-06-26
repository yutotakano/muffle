{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.CheckboxGroupComponentForModalRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.CheckboxGroupOptionForRequest
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data CheckboxGroupComponentForModalRequest = CheckboxGroupComponentForModalRequest
    { customId :: String
    , id :: Maybe Int32
    , maxValues :: Maybe Integer
    , minValues :: Maybe Integer
    , options :: [CheckboxGroupOptionForRequest]
    , required :: Maybe Bool
    , type' :: MessageComponentTypes
    }
    deriving (Show, Eq, Generic)
