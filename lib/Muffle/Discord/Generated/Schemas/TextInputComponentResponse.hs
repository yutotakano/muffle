{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.TextInputComponentResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.TextInputStyleTypes
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data TextInputComponentResponse = TextInputComponentResponse
    { customId :: String
    , id :: Int32
    , label :: Maybe String
    , maxLength :: Maybe Int32
    , minLength :: Maybe Int32
    , placeholder :: Maybe String
    , required :: Maybe Bool
    , style :: TextInputStyleTypes
    , type' :: MessageComponentTypes
    , value :: Maybe String
    }
    deriving (Show, Eq, Generic)
