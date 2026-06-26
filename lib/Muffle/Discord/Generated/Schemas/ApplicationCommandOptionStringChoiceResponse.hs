{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.ApplicationCommandOptionStringChoiceResponse where

import Data.Int (Int32, Int64)
import GHC.Generics


data ApplicationCommandOptionStringChoiceResponse = ApplicationCommandOptionStringChoiceResponse
    { name :: String
    , nameLocalizations :: Maybe ApplicationCommandOptionStringChoiceResponseNameLocalizationsNullableInner
    , nameLocalized :: String
    , value :: String
    }
    deriving (Show, Eq, Generic)
data ApplicationCommandOptionStringChoiceResponseNameLocalizationsNullableInner = ApplicationCommandOptionStringChoiceResponseNameLocalizationsNullableInner
    { 
    }
    deriving (Show, Eq, Generic)
