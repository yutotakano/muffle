{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE DeriveGeneric #-}
module Muffle.Discord.Generated.Schemas.InteractionApplicationCommandAutocompleteCallbackStringData where

import Data.Int (Int32, Int64)
import GHC.Generics
import Muffle.Discord.Generated.Schemas.ApplicationCommandOptionStringChoice

data InteractionApplicationCommandAutocompleteCallbackStringData = InteractionApplicationCommandAutocompleteCallbackStringData
    { choices :: Maybe ([Maybe ApplicationCommandOptionStringChoice])
    }
    deriving (Show, Eq, Generic)
