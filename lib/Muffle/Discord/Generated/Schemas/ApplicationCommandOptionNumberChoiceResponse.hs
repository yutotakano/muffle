{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandOptionNumberChoiceResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data ApplicationCommandOptionNumberChoiceResponse = ApplicationCommandOptionNumberChoiceResponse
    { name :: String
    , nameLocalizations :: Maybe ApplicationCommandOptionNumberChoiceResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , value :: Integer
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandOptionNumberChoiceResponseNameLocalizationsNullableInner = ApplicationCommandOptionNumberChoiceResponseNameLocalizationsNullableInner (Maybe ApplicationCommandOptionNumberChoiceResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandOptionNumberChoiceResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandOptionNumberChoiceResponseNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
