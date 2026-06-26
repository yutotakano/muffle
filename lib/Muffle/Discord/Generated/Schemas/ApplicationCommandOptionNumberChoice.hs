{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandOptionNumberChoice where

import Data.Int (Int32, Int64)
import GHC.Generics


data ApplicationCommandOptionNumberChoice = ApplicationCommandOptionNumberChoice
    { name :: String
    , nameLocalizations :: Maybe ApplicationCommandOptionNumberChoiceNameLocalizationsNullableInner
    , value :: Integer
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandOptionNumberChoiceNameLocalizationsNullableInner = ApplicationCommandOptionNumberChoiceNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
