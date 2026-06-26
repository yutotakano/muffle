{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandOptionIntegerChoiceResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.Int53Type

data ApplicationCommandOptionIntegerChoiceResponse = ApplicationCommandOptionIntegerChoiceResponse
    { name :: String
    , nameLocalizations :: Maybe ApplicationCommandOptionIntegerChoiceResponseNameLocalizationsNullableInner
    , nameLocalized :: String
    , value :: Int53Type
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandOptionIntegerChoiceResponseNameLocalizationsNullableInner = ApplicationCommandOptionIntegerChoiceResponseNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
