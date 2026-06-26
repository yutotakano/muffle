{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandOptionIntegerChoice where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.Int53Type

data ApplicationCommandOptionIntegerChoice = ApplicationCommandOptionIntegerChoice
    { name :: String
    , nameLocalizations :: Maybe ApplicationCommandOptionIntegerChoiceNameLocalizationsNullableInner
    , value :: Int53Type
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandOptionIntegerChoiceNameLocalizationsNullableInner = ApplicationCommandOptionIntegerChoiceNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
