{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandOptionStringChoiceResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data ApplicationCommandOptionStringChoiceResponse = ApplicationCommandOptionStringChoiceResponse
    { name :: String
    , nameLocalizations :: Maybe ApplicationCommandOptionStringChoiceResponseNameLocalizationsNullableInner
    , nameLocalized :: Maybe String
    , value :: String
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandOptionStringChoiceResponseNameLocalizationsNullableInner = ApplicationCommandOptionStringChoiceResponseNameLocalizationsNullableInner (Maybe ApplicationCommandOptionStringChoiceResponseNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandOptionStringChoiceResponseNameLocalizationsNullableInnerNullableInner = ApplicationCommandOptionStringChoiceResponseNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
