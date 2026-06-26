{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandOptionStringChoice where

import Data.Int (Int32, Int64)
import GHC.Generics


data ApplicationCommandOptionStringChoice = ApplicationCommandOptionStringChoice
    { name :: String
    , nameLocalizations :: Maybe ApplicationCommandOptionStringChoiceNameLocalizationsNullableInner
    , value :: String
    }
    deriving (Show, Eq, Generic)
newtype ApplicationCommandOptionStringChoiceNameLocalizationsNullableInner = ApplicationCommandOptionStringChoiceNameLocalizationsNullableInner (Maybe ApplicationCommandOptionStringChoiceNameLocalizationsNullableInnerNullableInner)
    deriving (Show, Eq, Generic)
data ApplicationCommandOptionStringChoiceNameLocalizationsNullableInnerNullableInner = ApplicationCommandOptionStringChoiceNameLocalizationsNullableInnerNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
