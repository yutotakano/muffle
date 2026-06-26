{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.TextInputComponentForModalRequest where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.TextInputStyleTypes
import Muffle.Discord.Generated.Schemas.MessageComponentTypes

data TextInputComponentForModalRequest = TextInputComponentForModalRequest
    { customId :: String
    , id :: Maybe Int32
    , label :: Maybe String
    , maxLength :: Maybe Integer
    , minLength :: Maybe Integer
    , placeholder :: Maybe String
    , required :: Maybe Bool
    , style :: TextInputStyleTypes
    , type' :: MessageComponentTypes
    , value :: Maybe String
    }
    deriving (Show, Eq, Generic)
