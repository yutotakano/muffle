{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandOptionIntegerChoiceResponse where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.Int53Type

data ApplicationCommandOptionIntegerChoiceResponse = ApplicationCommandOptionIntegerChoiceResponse
    { name :: String
    , nameLocalizations :: Maybe ApplicationCommandOptionIntegerChoiceResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , value :: Int53Type
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandOptionIntegerChoiceResponseNameLocalizationsNullableInner = ApplicationCommandOptionIntegerChoiceResponseNameLocalizationsNullableInner (Maybe ApplicationCommandOptionIntegerChoiceResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandOptionIntegerChoiceResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandOptionIntegerChoiceResponseNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
